Der String m<sub>1</sub> || Padding kann nun um eine beliebige Nachricht erweitert werden.<br>
<br>
In unserem Beispiel wollen Sie die ursprüngliche Bestellung durch die Erweiterung `&bus=50` auf 50 Busse erhöhen.<br>

`m2="&bus=50`{{execute}}<br>
`m2_hex=$(echo $m2 | hexdump -ve '1/1 "%.2x"')`{{execute}}<br>

`m_ext="${m1_hex}${pad}${m2}"`{{execute}}<br>

Sie haben nun die erweiterte Nachricht m<sub>ext<sub> = m<sub>1</sub> || Padding || m<sub>2</sub> erstellt.
`echo $m_ext`{{execute}}