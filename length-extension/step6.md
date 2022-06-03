Das Padding wurde wie folgt gebildet:<br>
<strong>Padding = 80 || 00 * x || L<strong>
- 80-Byte: Start-Wert für Padding
- 00-Byte: Padding-Byte
- x: Anzahl 00-Bytes des Paddings
- L: 00 * 7 || 70 (big-endian)


>13) Welchen Wert hat x?

>14) Geben Sie das Padding in Hexadezimal-Bytes an (ohne Leerzeichen).

<i>Tipp: Sie können einen Texteditor Ihrer Wahl verwenden oder in Killercoda eine neue Textdatei mit </i> `touch textfile.txt`{{execute}} <i>anlegen. 
Die neu erstellte Datei kann im Editor Tab (links neben dem Terminal Tab) bearbeitet werden.</i>