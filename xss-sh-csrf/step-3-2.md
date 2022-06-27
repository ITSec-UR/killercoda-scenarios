Im Beispiel der Vorlesung wurden die Login-Daten über GET-Parameter in der URL an die Webseite übermittelt.

Hier hingegen werden die Formulareingaben über die POST-Methode verschickt. Sie können also Ihren Schadcode, der 
anstelle des Nutzernamens ein iframe mit dem gefälschten Login-Formular einbettet, 
also nicht direkt im Link an das Opfer senden, sondern müssen eine POST-Anfrage an die SkyBalloon Webseite auslösen. 
Dies können Sie über eine zweite eigene PHP-Webseite erreichen. 

Das Opfer soll also auf einen Link zu Ihrer zweiten Webseite klicken. 
Diese sendet per HTTP POST-Methode eine gefälschte Login-Anfrage mit dem XSS-Angriff an die SkyBalloon Webseite.
Der Nutzer wird dann an die mit dem schädlichen iframe infizierte SkyBalloon Webseite weitergeleitet.

Implementieren Sie die Webseite, welche die POST-Anfrage durchführt und das iframe mit der gefälschten Loginseite
in die SkyBalloon Webseite einbettet in der Datei `xss-iframe.php`{{}}.

Die Seite ist auf Ihrem Server erreichbar unter [/xss-iframe.php]({{TRAFFIC_HOST1_82}}/xss-iframe.php).

>14: Tipp und Lösung