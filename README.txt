ENERGIA CHIARA — prima versione

Per scaricare direttamente gli XML ARERA avvia `avvia-energia-chiara.bat` e lascia aperta la finestra del server. L’app si aprirà dal file locale, mantenendo i dati salvati nel browser. I pulsanti Aggiorna usano il server locale per scaricare l’XML come allegato, senza mostrarlo nella scheda. Se vuoi solo consultare l’app senza scaricare, puoi aprire `index.html` direttamente.

IMPORTARE I FILE ARERA
1. Apri il collegamento “Apri Open Data” nell’app.
2. Nella sezione “Offerte Mercato Libero” scarica “Offerte (xml)” per elettrico e gas. Il mercato domestico viene filtrato automaticamente dal file.
3. Seleziona la commodity corrispondente nell’app e importa il file XML. Dopo gli aggiornamenti del parser, reimporta il file per vedere tutti i componenti. Per gli indici apri la scheda Indici energia, usa “Scarica CSV prezzi storici” e poi “Importa CSV indici”.

Le offerte vengono ordinate in base ai corrispettivi unitari e alle quote fisse trovate nel file; per alcuni contratti variabili viene aggiunto l’ultimo PUN o PSV disponibile. La media delle fasce elettriche è semplice, non personalizzata sulle fasce F1/F2/F3. Il file ARERA riporta il venditore tramite partita IVA. L’app mostra la ragione sociale quando è presente nella mappa ricavata dagli elenchi pubblici MASE; altrimenti mostra comunque la partita IVA.

LIMITI DELLA STIMA
La stima aggiunge alle componenti di vendita le componenti regolate disponibili, imposte stimate e sconti del primo anno presenti nel file. La localizzazione è per regione/ambito, non sempre per singolo comune o classe del contatore; i prezzi variabili sono una fotografia e non una previsione. Per la stima ufficiale completa apri il Portale Offerte ARERA.

INSTALLAZIONE
Per installare come PWA pubblica tutti i file della cartella outputs su un hosting HTTPS. Il pulsante “Installa app” appare quando il browser comunica che è disponibile e resta nascosto se l’app è già installata. Su iPhone usa Condividi > Aggiungi alla schermata Home.

BACKUP E PRIVACY
“Backup” scarica un JSON da trasferire su un altro dispositivo; Impostazioni permette ripristino e sincronizzazione JSONBin facoltativa. La Access Key JSONBin è salvata nel browser; usa una chiave dedicata e non la Master Key. La sincronizzazione invia profilo, offerte e indici a JSONBin.io, servizio terzo.


RICERCA FORNITORE E STIMA TOTALE
Usa il campo Cerca fornitore o offerta per filtrare la lista. La stima totale aggiunge le componenti regolate 2026 di rete e oneri, oltre ad accisa e IVA stimate. Per il gas seleziona la regione; le imposte regionali sono calcolate per scaglioni e possono essere adattate alla zona climatica e al territorio fiscale.


I pulsanti Aggiorna elettrico, Aggiorna gas e Aggiorna dual fuel mostrano quale XML scaricare e offrono il collegamento alla pagina Open Data ARERA: https://www.ilportaleofferte.it/portaleOfferte/it/open-data.page . Nella sezione Offerte Mercato Libero scarica il relativo XML, poi torna all’app, seleziona la commodity e importa il file. Questo flusso funziona anche su mobile; il BAT resta utile solo per avviare l’app in Windows.

Sconti XML ARERA: la stima considera gli sconti del primo anno, distinguendo quelli prima/dopo IVA e segnalando quelli condizionati. Per aggiornare le offerte con i nuovi campi, reimporta l’XML. Gli sconti condizionati entrano nel totale solo attivando l’opzione nel profilo.

CALCOLO GAS
Il totale gas ora separa e calcola rete, oneri generali, accise, addizionale regionale e IVA con i parametri ARERA 2026-10. L’addizionale regionale viene selezionata automaticamente dal profilo regione e si può sostituire con l’aliquota in bolletta. La tariffa di rete è calcolata per ambito regionale; il Portale può differire per parametri puntuali del comune e del contatore. Gli sconti percentuali sul prezzo materia riducono la sola quota variabile e il relativo imponibile IVA.


IMPOSTE GAS PER REGIONE
Il profilo calcola automaticamente l’addizionale regionale per fascia annua di consumo e mostra le quattro aliquote nella scheda di ogni offerta. Sono incluse tutte le regioni: aliquota zero dove non applicata, fasce regionali specifiche e selettore della zona climatica per Liguria e Abruzzo. Nel Lazio il flag ex Cassa del Mezzogiorno applica la fascia territoriale pertinente; è disponibile anche per verificare l’accisa ridotta. Un campo facoltativo permette di sostituire l’aliquota automatica con quella riportata in bolletta. La stima mostra separatamente accisa, addizionale e IVA al 10%/22%.

Fonti: ARERA, tabella “Imposte sul gas” (Relazione annuale 2023, link nella pagina ARERA); Regione Emilia-Romagna, tariffe ARISGAM; Regione Liguria, aliquote per zona climatica; Regione Lazio, aliquote per territorio. Alcune fasce regionali pubblicate in modo completo da ARERA sono riferite all’ultima tavola completa disponibile e possono essere aggiornate con modifiche regionali: controlla la bolletta e usa l’override manuale se necessario. Per un confronto certificato per comune, classe contatore e consumi usa il Portale Offerte ARERA.


AGGIORNAMENTO IMPOSTE GAS
Nel profilo, “Aggiorna aliquote accisa e IVA” apre i collegamenti alle fonti ADM e ARERA e consente di inserire le aliquote aggiornate. Le modifiche si salvano nel profilo locale e nei backup; “Ripristina valori standard” elimina le modifiche e ripristina le aliquote incluse nell’app. L’app non controlla automaticamente i siti: mostra la data di riferimento e non segnala cambiamenti finché non si consulta la fonte. Le categorie del dettaglio ARERA mostrano sempre l’importo riepilogativo; apri una categoria per vedere le quantità, le aliquote applicate e i singoli importi.


MANUALE
Premi il pulsante “Istruzioni” nell’intestazione per aprire il manuale PDF. Il file è incluso nella cartella e nel pacchetto ZIP; quando disponibile viene anche conservato nella cache per la consultazione offline.
