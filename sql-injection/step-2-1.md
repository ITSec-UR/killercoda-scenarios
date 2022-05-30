Finden Sie eine alternative Möglichkeit zur Anmeldung mit selbstgewählten Logindaten.

Beachten sie, dass das in der Datenbank gespeicherte Passwort mit der Hashfunktion MD5 
gehasht wurde. In MySQL kann ein MD5-Hash mit dem Befehl `MD5(string);` erzeugt werden.

Sie können davon ausgehen, dass der Nutzername und das Passwort die ersten Spalten der Nutzer-Tabelle sind, 
allerdings ist Ihnen die Anzahl der Spalten nicht bekannt.

Tipp:
Sorgen Sie dafür, dass das eigentliche Statement zur DB-Abfrage des Nutzernamens kein Ergebnis liefert 
und nutzen Sie das `UNION` Statement. Probieren Sie zum Herausfinden der Spaltenlänge aus, das Statement
um jeweils einen Wert zu erweitern, bis es eine gültige Rückgabe liefert.

Nutzername: ' AND 1=0 SELECT 'name', MD5('pass'), 1, 1;--
Passwort: pass

>>2) Wie viele weitere Spalten enthält die Tabelle?<<
     === 2
