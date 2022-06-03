Neben der Nachricht und deren MAC kennen Sie die zur Berechnung des MAC verwendete Hashfunktion: **SHA-1**

Informieren Sie sich in [RFC3174 Abschnitt 4](https://datatracker.ietf.org/doc/html/rfc3174#page-4) 
über den Aufbau des Paddings bei SHA-1 und beantworten Sie die folgenden Fragen.

>>3) Wie viele Bytes umfasst ein Block beim SHA-1?

>>4) Welches Zeichen (binär) markiert den Beginn des Paddings?

>>5) Welches Zeichen (binär) wird zum Füllen des restlichen Paddings verwendet?

>>6) Wie sieht das erste Padding-Byte in Hexadezimalschreibweise aus?

>>7) Wie viele Bytes des letzten Blocks sind für die Länge L der Nachricht reserviert?

>>8) L wird in der Einheit ... angegeben.

### Beispiel: Nachricht m<sub>1</sub> = "bus=1"

>>9) Welchen Wert hat L im Beispiel? (Tipp: Verwenden Sie hexdump zum Zählen der Bytes.)

>>10) Wie lautet für dieses Beispiel die Längenangabe am Ende des Paddings (hexadezimal)?

<i>Tipp: Rechnen Sie den Wert L in einen Hexadezimalwert um.</i>