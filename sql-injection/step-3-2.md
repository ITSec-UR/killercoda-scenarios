Beginnen Sie wie bei der vorherigen Webseite damit, die Spaltenanzahl der für die SQL-Injection genutzten Tabelle und den Namen der Datenbank herauszufinden.
Encodieren Sie Ihr Injection-Statement dazu mithilfe eines Online URL-Encoders und kopieren Sie es anstelle des Werts für die _id_ (1-4) in die Adresszeile.

>11: Wie viele Spalten enthält die Tabelle insgesamt?

**Tipps zum Aufbau des Injection-Statements (IS)**:
- _Verwenden Sie die UNION-Klausel._
- _Erhöhen Sie inkrementell die Spaltenanzahl in Ihrem IS._
- _Verwenden Sie aufsteigende Zahlen in Ihrem SELECT-Statement. So können Sie Rückschlüsse auf die Reihenfolge der Spalten ziehen, bspw. Spalte \[Nr.\] enthält den Titel._


>12: Wie lautet der Name der Datenbank?

**Tipp**:

- _Recherche: Befehl zum Abruf des Datenbanknamens in MySQL._
- _Wählen Sie für die Ausgabe des Datenbanknamens eine beliebige Spalte, deren Inhalt als Text auf der Webseite dargestellt wird (bspw. Titel)._