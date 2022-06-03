Der String (m<sub>1</sub> || Padding) kann nun um eine beliebige Nachricht erweitert werden.

In unserem Beispiel wollen Sie die ursprüngliche Bestellung durch die Erweiterung `&bus=50`{{}} auf 50 Busse erhöhen.

Legen Sie die folgenden Variablen an.

`m2="&bus=50"`{{execute}}

`m2_hex=$(echo $m2 | xxd -p)`{{execute}}

`m_ext="${m1}${pad}${m2}"`{{execute}}

Sie haben nun die erweiterte Nachricht 
m<sub>ext</sub> = (m<sub>1</sub> || Padding || m<sub>2</sub>) 
erstellt.

`echo $m_ext`{{execute}}