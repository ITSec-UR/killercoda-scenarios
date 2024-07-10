Finden Sie eine alternative Möglichkeit zur Anmeldung mit selbstgewählten Logindaten.

Beachten Sie, dass das in der Datenbank gespeicherte Passwort mit der Hashfunktion MD5 
gehasht wurde. In MySQL kann ein MD5-Hash mit dem Befehl `MD5(string);`{{}} erzeugt werden.

Sie können davon ausgehen, dass der Nutzername und das Passwort die ersten Spalten der Nutzer-Tabelle sind, 
allerdings ist Ihnen die Anzahl der Spalten nicht bekannt.

>2: Wie viele weitere Spalten enthält die Tabelle?

**Tipps zum Aufbau des Injection-Statements (IS)**: _
- _Verwenden Sie das UNION-Statement._
- _Hashen Sie Ihr gewähltes Passwort im IS mit MD5._
- _Erhöhen Sie inkrementell die Spaltenanzahl in Ihrem IS._
