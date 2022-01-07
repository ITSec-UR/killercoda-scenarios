Zuletzt müssen Sie für Ihre erweiterte Nachricht den passenden MAC berechnen.<br>
<br>
Zur Initialisierung des SHA-1 Algorithmus für den Block n+1 wird der Output des Blocks n verwendet und in fünf Teilstrings H<sub>i</sub> gleicher Größe aufgeteilt.<br>

Da k || m<sub>1</sub> || Padding einen 64-Byte Block vollständig belegt, muss m<sub>2</sub> in einem neuen Block verarbeitet werden.

###### 15) Wie lauten die fünf Teilstrings des Initialisierungsvektors für den neuen Block (mit m<sub>2</sub>)?

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


>>16) Welche Eingabe-Nachricht muss Algorithmus übergeben werden (Klartext)?<<
=== &bus=50

>>17) Welche Länge (Bytes) hat die erweiterte Nachricht?<<
=== 71