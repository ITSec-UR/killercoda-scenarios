Sie haben nun die Übungsaufgaben erfolgreich abgeschlossen und 
grundlegende Fähigkeiten in der Durchführung von SQL-Injections erlangt.

Wie Sie wissen, gibt es in den Datenbanken noch weitere Tabellen, an denen 
Sie als zusätzliche Herausforderung Ihre Fähigkeiten testen können.

Beispielsweise kennen Sie nicht alle Nutzer der ersten beiden Webseiten und 
auch in der dritten Datenbank ist noch eine unbekannte Tabelle enthalten...

**Empfohlene Gegenmaßnahmen**  
Durch [Prepared Statements](https://www.php.net/manual/en/mysqli.quickstart.prepared-statements.php) (parametrisierte Queries) wird die Query-Struktur von den Variablen getrennt. Das folgende Code-Snippet zeigt, wie die Query aus Aufgabe 2 vor SQL-Injection geschützt werden kann.
```php
$query = $db->prepare("SELECT * FROM people WHERE name = ?"); // '?' is a placeholder
$sql->bind_param('s', $_POST["username"]); // 's' specifies the variable type => 'string'
$sql->execute();
$result = $sql->get_result();
```