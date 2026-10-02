ENERGIA CHIARA — prima versione

AVVIO SU WINDOWS
Estrai il pacchetto ZIP in una cartella e avvia `avvia-energia-chiara.bat`. L’app si apre nel browser; lascia aperta la finestra del server mentre la usi. I pulsanti Aggiorna aprono la pagina Open Data ARERA, non scaricano direttamente il file. La copia locale mantiene i dati nel browser usato per aprirla. Per installare la PWA, pubblica tutti i file su HTTPS e apri l’indirizzo nel browser.

IMPORTARE I FILE ARERA
1. Apri il collegamento “Apri Open Data” nell’app.
2. Nella sezione “Offerte Mercato Libero” scarica “Offerte (xml)” per elettrico e gas. Il mercato domestico viene filtrato automaticamente dal file.
3. All’avvio scegli Luce e gas, Solo luce oppure Solo gas nel menu della schermata Confronta; l’app carica i relativi dati solo dopo la scelta. Scegli la commodity corrispondente e importa il file XML. Dopo gli aggiornamenti del parser, reimporta il file per vedere tutti i componenti. Per gli indici apri la scheda Indici energia, usa “Scarica CSV prezzi storici” e poi “Importa CSV indici”.

Le offerte preferite vengono caricate solo quando apri la scheda Preferite. Le offerte vengono ordinate in base ai corrispettivi unitari e alle quote fisse trovate nel file; per alcuni contratti variabili viene aggiunto l’ultimo PUN o PSV disponibile. La media delle fasce elettriche è semplice, non personalizzata sulle fasce F1/F2/F3. Il file ARERA riporta il venditore tramite partita IVA. L’app mostra la ragione sociale quando è presente nella mappa ricavata dagli elenchi pubblici MASE; altrimenti mostra comunque la partita IVA.

LIMITI DELLA STIMA
La stima aggiunge alle componenti di vendita le componenti regolate disponibili, imposte stimate e sconti del primo anno presenti nel file. La localizzazione è per regione/ambito, non sempre per singolo comune o classe del contatore; i prezzi variabili sono una fotografia e non una previsione. Per la stima ufficiale completa apri il Portale Offerte ARERA.

INSTALLAZIONE PWA
La PWA si installa solo se tutti i file sono pubblicati e aperti da un indirizzo HTTPS. Su Android/Chrome apri l’indirizzo e scegli Installa app o Aggiungi a schermata Home; su iPhone/iPad usa Safari > Condividi > Aggiungi alla schermata Home. Il pulsante “Installa app” appare solo nei browser che lo supportano e quando non è già installata.

BACKUP E PRIVACY
Il pulsante “Dati e backup” apre un pannello unico con esportazione e ripristino JSON, aliquote e sincronizzazione JSONBin facoltativa. La Access Key JSONBin è salvata nel browser; usa una chiave dedicata e non la Master Key. La sincronizzazione invia profilo, offerte e indici a JSONBin.io, servizio terzo.


RICERCA FORNITORE E STIMA TOTALE
Usa il campo Cerca fornitore o offerta per filtrare la lista. La stima totale aggiunge le componenti regolate 2026 di rete e oneri, oltre ad accisa e IVA stimate. Per il gas seleziona la regione; le imposte regionali sono calcolate per scaglioni e possono essere adattate alla zona climatica e al territorio fiscale.


I pulsanti Aggiorna elettrico, Aggiorna gas e Aggiorna dual fuel si comportano allo stesso modo su PC e mobile: mostrano quale file scaricare e aprono la pagina https://www.ilportaleofferte.it/portaleOfferte/it/open-data.page . Nella sezione Offerte Mercato Libero scarica il relativo XML. Se i file hanno lo stesso nome, rinominali uno per volta (offerte-elettrico.xml, offerte-gas.xml, offerte-dual-fuel.xml), mantenendo l’estensione .xml, poi importa il file corretto nell’app. L’app importa le offerte Luce e Gas separatamente e non calcola il totale dual fuel combinato: per quello usa il confronto ufficiale ARERA. Il BAT serve solo per avviare l’app in Windows.

Sconti XML ARERA: la stima considera gli sconti del primo anno, distinguendo quelli prima/dopo IVA e segnalando quelli condizionati. Per aggiornare le offerte con i nuovi campi, reimporta l’XML. Gli sconti condizionati entrano nel totale solo attivando l’opzione nel profilo.

CALCOLO GAS
Il totale gas ora separa e calcola rete, oneri generali, accise, addizionale regionale e IVA con i parametri ARERA 2026-10. L’addizionale regionale viene selezionata automaticamente dal profilo regione e si può sostituire con l’aliquota in bolletta. La tariffa di rete è calcolata per ambito regionale; il Portale può differire per parametri puntuali del comune e del contatore. Gli sconti percentuali sul prezzo materia riducono la sola quota variabile e il relativo imponibile IVA.


IMPOSTE GAS PER REGIONE
Il profilo calcola automaticamente l’addizionale regionale per fascia annua di consumo e mostra le quattro aliquote nella scheda di ogni offerta. Sono incluse tutte le regioni: aliquota zero dove non applicata, fasce regionali specifiche e selettore della zona climatica per Liguria e Abruzzo. Nel Lazio il flag ex Cassa del Mezzogiorno applica la fascia territoriale pertinente; è disponibile anche per verificare l’accisa ridotta. Un campo facoltativo permette di sostituire l’aliquota automatica con quella riportata in bolletta. La stima mostra separatamente accisa, addizionale e IVA al 10%/22%.

Fonti: ARERA, tabella “Imposte sul gas” (Relazione annuale 2023, link nella pagina ARERA); Regione Emilia-Romagna, tariffe ARISGAM; Regione Liguria, aliquote per zona climatica; Regione Lazio, aliquote per territorio. Alcune fasce regionali pubblicate in modo completo da ARERA sono riferite all’ultima tavola completa disponibile e possono essere aggiornate con modifiche regionali: controlla la bolletta e usa l’override manuale se necessario. Per un confronto certificato per comune, classe contatore e consumi usa il Portale Offerte ARERA.


AGGIORNAMENTO IMPOSTE GAS
Nel profilo, “Aggiorna aliquote accisa e IVA” apre i collegamenti alle fonti ADM e ARERA e consente di inserire le aliquote aggiornate. Le modifiche si salvano nel profilo locale e nei backup; “Ripristina valori standard” elimina le modifiche e ripristina le aliquote incluse nell’app. L’app non controlla automaticamente i siti: mostra la data di riferimento e non segnala cambiamenti finché non si consulta la fonte. Le categorie del dettaglio in stile ARERA sono disponibili per luce e gas e mostrano sempre l’importo riepilogativo; apri una categoria per vedere quantità, aliquote applicate e singoli importi. Per la luce il dettaglio distingue vendita, rete (quote fissa, potenza ed energia), oneri, subtotal prima imposte, accisa e IVA. Le componenti elettriche sono una stima dell’app e possono essere aggregate rispetto al prospetto puntuale ARERA.


MANUALE
Premi il pulsante “Istruzioni” nell’intestazione per aprire il manuale PDF. Il file è incluso nella cartella e nel pacchetto ZIP; quando disponibile viene anche conservato nella cache per la consultazione offline.


PROFILI UTENZA
Crea un profilo distinto per casa, negozio o ufficio. Domestico e Altri usi filtrano le offerte in base al tipo cliente presente nell’XML (per recuperare il nuovo campo, reimporta i file). Per la luce puoi scegliere monorario, fasce orarie o nessuna preferenza. Con fasce inserisci F1, F2 e F3 annui dalla bolletta; la somma deve coincidere con il consumo totale. Il filtro “solo rinnovabili” mostra solo le offerte luce con dichiarazione riconosciuta nei dati XML. Per Altri usi il calcolo delle componenti regolate e delle imposte è semplificato: usa il Portale Offerte ARERA per la verifica localizzata.

AVVERTENZE SULLE STIME
Per una graduatoria attendibile inserisci i consumi annuali, seleziona il comune tramite CAP o nome e aggiorna regolarmente le offerte ARERA. Il confronto ufficiale ARERA resta il riferimento per verificare la disponibilità puntuale.
Per Altri usi l’accisa non domestica è conteggiata con i valori standard di riferimento e l’IVA luce è impostata al 22%, modificabile nel profilo se applicabile un’aliquota diversa. Le componenti regolate di rete/oneri restano indicative per attività. Per il gas l’accisa non domestica è applicata; l’addizionale regionale automatica è disponibile per Emilia-Romagna, mentre per le altre regioni va inserita da bolletta nel campo manuale. Per consumi industriali molto elevati e regimi speciali le accise possono dipendere da soglie mensili, usi e agevolazioni: verifica sempre la bolletta o il Portale Offerte.
Il filtro Comune/CAP risolve la località e confronta la copertura geografica esplicitamente dichiarata nell’XML (codici di comune, provincia e regione). Per CAP condivisi viene richiesto di scegliere il comune. Se l’offerta non dichiara una zona, resta in elenco e non è filtrata; il dataset CAP è indicativo. Verifica sempre la disponibilità sul sito del fornitore o sul Portale Offerte ARERA. Il prospetto mostra importi stimati e aliquote selezionate, non una bolletta certificata. Le tariffe regolate possono essere aggiornate nel corso dell’anno; controlla le date di riferimento e consulta le fonti ufficiali.

USO OFFLINE E MANUALE
La cache offline richiede che siano presenti i file principali. Il manuale PDF viene aggiunto alla cache quando disponibile, ma la sua assenza non impedisce l’installazione offline dell’app. Per aggiornare la versione ospitata, il browser deve ricevere il nuovo service-worker.js.
ARCHIVIO E DATI
Le offerte importate vengono salvate in IndexedDB, separatamente da profilo e preferiti, per ridurre il rischio di raggiungere il limite di localStorage. Backup esportato e sincronizzazione cloud includono comunque l’archivio offerte. Se il browser blocca IndexedDB, l’app tenta la modalità locale tradizionale e avvisa in caso di spazio esaurito.
Le componenti elettriche incluse sono riferite al prospetto ARERA di agosto 2026; controlla gli aggiornamenti tariffari successivi prima di usare il risultato come decisione finale.
Filtro territoriale Comune/CAP: la località è risolta con l’elenco comunitario comuni-italiani (RP92, licenza MIT; CAP indicativi) incorporato nell’app. La copertura è filtrata solo quando l’offerta dichiara una zona nell’XML ARERA; se il file non dichiara la zona, l’offerta resta visibile. Verificare sempre disponibilità e condizioni sul sito del fornitore.
