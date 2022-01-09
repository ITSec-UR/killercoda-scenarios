Zuletzt müssen Sie für Ihre erweiterte Nachricht den passenden MAC berechnen.<br>
<br>
Bei dem SHA-1 Algorithmus wird für den Block n+1 der Output von Block n als Initialisierungsvektor (IV) benutzt. IV ist eine 5x4 Matrix, bestehend aus fünf 4-Byte Teilstrings (H<sub>i</sub>).

Da k || m<sub>1</sub> || Padding einen 64-Byte Block vollständig belegen, muss m<sub>2</sub> in einem neuen Block (n+1) verarbeitet werden.<br>

Zur Erinnerung: SHA-1 folgt einer Merkle–Damgård Konstruktion, d. h. der Hashwert ist gegeben durch x=h<sub>IV</sub>(m). Beim Hash-Length-Extension wird der Hashwert für den Block n+1 weitergerechnet mit dem Ergebnis aus Block n, d. h. der gefälschte MAC ist gegeben durch mac<sub>2</sub>=h<sub>mac1</sub>(m<sub>2</sub>)
##### 15) Wie lauten die fünf Teilstrings des Initialisierungsvektors für den Block n+1 (mit m<sub>2</sub>)?
*Tipp: Sehen Sie sich den Output für m<sub>1</sub> an. Sie können jederzeit Steps zurückgehen.*

>>H<sub>0</sub><<
=== 5e1498cb

>>H<sub>1</sub><<
=== e5a89b61

>>H<sub>2</sub><<
=== 4c66fc3d

>>H<sub>3</sub><<
=== e25092a0

>>H<sub>4</sub><<
=== e62ab006


>>16) Welche Eingabe-Nachricht muss dem Algorithmus übergeben werden (Klartext)?<<
=== &bus=50

>>17) Welche Länge (Bytes) hat die erweiterte Nachricht?<<
=== 71