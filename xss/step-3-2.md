Die Login-Seite von SkyBalloon ist anfällig für eine XSS-Attacke. Ein falscher Anmeldename wird dort explizit ausgegeben. Sie als Angreifer möchten im Folgenden die Ausgabe des Nutzernamens kontrollieren, indem Sie Ihren Angriffspayload dort unterbringen. 

Im Beispiel der Vorlesung wurden die Login-Daten über GET-Parameter in der URL an die Webseite übermittelt (und ausgewertet). 

In dieser Aufgaben werden die Formulareingaben jedoch über die POST-Methode verschickt. Um Ihren Schadcode auf der SkyBallon Webseite unterzubringen, müssen Sie also eine POST-Anfrage auslösen. Das Opfer soll dazu auf einen Link zu Ihrer Webseite klicken. Diese sendet per HTTP POST-Methode automatisch eine gefälschte Login-Anfrage mit dem XSS-Angriff an die SkyBalloon Webseite. 

Über den XSS-Angriff soll Ihre gefälschte Webseite `fake-login.php`{{}} in die SkyBallon Webseite als Iframe eingebettet werden und die orginale Webseite überlagern. Ziel des Angriffs ist es, dass der Nutzer sich auf der gefälschten Webseite (Iframe) anmeldet, die seine Credentials in einer Datei abspeichert. 

Implementieren Sie die Webseite `xss-iframe.php`{{}}, welche die POST-Anfrage so durchführt, dass Ihre gefälschte Loginseite als Iframe in die SkyBalloon Webseite einbettet wird. 

Die Seite ist auf Ihrem Server erreichbar unter [xss-iframe.php]({{TRAFFIC_HOST1_82}}/xss-iframe.php).

>14: Tipp und Lösung xss-iframe.php
