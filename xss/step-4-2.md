Die Login-Seite von SkyBalloon ist anfällig für eine **reflektierte XSS-Attacke**. Wird ein ungültiger Benutzername eingegeben, erscheint dieser ungefiltert in der Fehlermeldung – eine Schwachstelle, die Sie als Angreifer ausnutzen möchten, um dort einen XSS-Payload einzuschleusen.

Im Beispiel der Vorlesung wurden die Login-Daten über GET-Parameter in der URL an die Webseite übermittelt (und ausgewertet). 

In dieser Aufgaben werden die Formulareingaben jedoch über die realistischere POST-Methode verschickt. Um Ihren Schadcode auf der SkyBallon Webseite unterzubringen, müssen Sie also eine POST-Anfrage auslösen.

### Ziel des Angriffs

Sie möchten dem Opfer einen Link zu Ihrer eigenen Webseite schicken. Diese Webseite löst beim Aufruf automatisch eine POST-Anfrage aus, die eine gefälschte Login-Anfrage mit eingebettetem XSS-Code an die SkyBalloon Webseite sendet.  

Durch diesen XSS-Code soll Ihre eigene Login-Seite (`fake-login.php`{{}}) als Iframe in die Zielseite eingebettet werden und das echte Login-Fenster überlagern. Ziel ist es, dass sich das Opfer auf der gefälschten Seite im Iframe anmeldet, wobei die Zugangsdaten in einer Datei gespeichert werden.

### Aufgabe
Implementieren Sie die Datei `xss-iframe.php`{{}}, die beim Aufruf eine automatische POST-Anfrage an die SkyBalloon-Webseite sendet und dabei Ihre `fake-login.php`{{}} als Iframe einschleust.  

>17: Tipp und Lösung xss-iframe.php