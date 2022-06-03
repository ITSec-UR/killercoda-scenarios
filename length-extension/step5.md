Sie wissen bereits, dass
- der letzte Block 64 Bytes lang ist,
- die Nachricht die Länge 5 hat,
- jedes Zeichen der Nachricht durch ein Byte dargestellt wird,
- das erste Byte des Paddings immer 80 ist,
- und die letzten 8 Bytes, welche für die Länge L (Bits) der Nachricht reserviert sind.

### MAC = h(k || m)
Nun betrachten wir die Berechnung des MAC. Bevor die Hashfunktion die Eingabe-Nachricht (k || m) verarbeitet, 
wird die Eingabe mit Padding-Bytes auf ein Vielfaches der Blocklänge von 64-Bytes erweitert, sodass der MAC wie folgt berechnet wurde:<br>
**MAC = h(k || m<sub>1</sub> || Padding)**

Sie vermuten, dass der Schlüssel die Länge 9 hat.

11 
> Wie lautet die Längenangabe am Ende des Paddings für die Nachricht k || m<sub>1</sub> (hexadezimal)?

12 
> Welche Länge (Bytes) hat das Padding insgesamt?