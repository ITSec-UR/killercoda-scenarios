Neben der Nachricht und deren MAC kennen Sie die zur Berechnung des MAC verwendete Hashfunktion: **SHA-1**

Informieren Sie sich in [RFC3174 Abschnitt 4](https://datatracker.ietf.org/doc/html/rfc3174#page-4) 
über den Aufbau des Paddings bei SHA-1 und beantworten Sie die folgenden Fragen.

>>3) Wie viele Bytes umfasst ein Block beim SHA-1?<<
=== 64

>>4) Welches Zeichen (binär) markiert den Beginn des Paddings?<<
=== 1

>>5) Welches Zeichen (binär) wird zum Füllen des restlichen Paddings verwendet?<<
=== 0

>>6) Wie sieht das erste Padding-Byte in Hexadezimalschreibweise aus?<<
=== 80

>>7) Wie viele Bytes des letzten Blocks sind für die Länge L der Nachricht reserviert?<<
=== 8

>>8) L wird in ... angegeben.<<
() Bytes
(*) Bits

<br>

### Beispiel: Nachricht m<sub>1</sub> = "bus=1"

>>9) Welchen Wert hat L im Beispiel? (Tipp: Verwenden Sie hexdump zum Zählen der Bytes.)<<
() 5
() 6
(*) 40
() 32
() 48
() 4

>>10) Wie lautet für dieses Beispiel die Längenangabe am Ende des Paddings (hexadezimal)?<<
() 06
() 40
() 30
() 20
(*) 28
() 05

<i>Tipp: Rechnen Sie den Wert L in einen Hexadezimalwert um.</i>