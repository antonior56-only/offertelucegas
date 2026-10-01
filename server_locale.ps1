$ErrorActionPreference = 'Stop'
$listener = [System.Net.HttpListener]::new()
$listener.Prefixes.Add('http://127.0.0.1:8765/')
$listener.Start()
Write-Host 'Energia Chiara avviata. Lascia aperta questa finestra per usare l’app.'
Write-Host 'Il proxy locale scarica i file ARERA e li consegna come allegati.'
Start-Process (Join-Path $PSScriptRoot 'index.html')

while ($listener.IsListening) {
    $context = $listener.GetContext()
    $response = $context.Response
    $response.Headers.Add('Access-Control-Allow-Origin', 'null')
    $response.Headers.Add('Vary', 'Origin')
    try {
        if ($context.Request.Url.AbsolutePath -ne '/download') {
            $response.StatusCode = 404
            $body = [Text.Encoding]::UTF8.GetBytes('Endpoint non trovato')
            $response.ContentType = 'text/plain; charset=utf-8'
            $response.OutputStream.Write($body, 0, $body.Length)
        } else {
            $kind = $context.Request.QueryString['type'].ToUpperInvariant()
            if ($kind -notin @('E', 'G', 'D')) { throw 'Tipo file non valido' }
            $now = Get-Date
            $ymd = $now.ToString('yyyyMMdd')
            $period = $now.ToString('yyyy_MM')
            $filename = "PO_Offerte_${kind}_MLIBERO_${ymd}.xml"
            $uri = "https://www.ilportaleofferte.it/portaleOfferte/resources/opendata/csv/offerteML/$period/$filename"
            $request = [System.Net.HttpWebRequest]::Create($uri)
            $request.UserAgent = 'Mozilla/5.0 EnergiaChiara/1.0'
            $request.Timeout = 90000
            $request.ReadWriteTimeout = 90000
            $sourceResponse = $request.GetResponse()
            $response.StatusCode = 200
            $response.ContentType = 'application/xml; charset=utf-8'
            $response.Headers.Add('Content-Disposition', "attachment; filename=`"$filename`"")
            if ($sourceResponse.ContentLength -ge 0) { $response.ContentLength64 = $sourceResponse.ContentLength }
            $source = $sourceResponse.GetResponseStream()
            $source.CopyTo($response.OutputStream)
            $source.Dispose()
            $sourceResponse.Dispose()
        }
    } catch {
        if (-not $response.OutputStream.CanWrite) { continue }
        $response.StatusCode = 502
        $response.ContentType = 'text/plain; charset=utf-8'
        $body = [Text.Encoding]::UTF8.GetBytes("Download ARERA non riuscito: $($_.Exception.Message)")
        try { $response.OutputStream.Write($body, 0, $body.Length) } catch { }
    } finally {
        $response.Close()
    }
}
