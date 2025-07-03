Sie überlegen, dass es wesentlich praktischer wäre, wenn beim Aufruf der SkyBalloon-Webseite durch einen authentifizierten Nutzer dessen **Session-ID automatisch an Ihren eigenen Webserver** übermittelt wird. So haben Sie bei Bedarf sofort Zugriff auf eine gültige Session.

Aus vorherigen Erfahrungen wissen Sie, dass die Ziel-Webseite anfällig für **persistente XSS-Angriffe** ist.

### XSS-Payload
Entwickeln Sie einen JavaScript-Code, der bei jedem Seitenaufruf die aktuelle **Session-ID** des Nutzers ausliest und diese als URL-Parameter an Ihre eigene Webseite [`xss-cookie.php`{{}}]({{TRAFFIC_HOST1_82}}/xss-cookie.php) überträgt.  
Platzieren Sie Ihren XSS-Code **anstelle eines Highlights** auf der SkyBalloon-Webseite.

>13: Tipp und Lösung JavaScript

### `xss-cookie.php`{{}} implementieren
Erstellen Sie die Datei `xss-cookie.php`{{}}, sodass die empfangene Session-ID in einer `.txt`{{}}-Datei gespeichert wird.

>14: Tipp und Lösung xss-cookie.php

### Tipps
- Sie erreichen Ihren Angreifer-Webserver unter der [Angreifer-Domain]({{TRAFFIC_HOST1_82}}). 
Die PHP-Dateien für die in den folgenden Aufgaben zu erstellenden Webseiten befinden sich im Ordner `web-attacker`{{}}. Falls dieser im Editor nicht sichtbar ist, klicken Sie oben links den 'Refresh Explorer' Button.
- Sie können über den integrierten Visual Studio Code Editor (linkes Tab) direkt in Killercoda arbeiten. Alternativ steht es Ihnen natürlich frei, in einem Editor oder IDE Ihrer Wahl zu programmieren und Ihren Code anschließend in die Killercoda Datei zu übertragen.
- Sie können den Leak sehen, indem Sie die Entwicklertools Ihres Browsers im Netzwerk-Tab öffnen. Hier sollte die Anfrage an {{TRAFFIC_HOST1_82}} aufgelistet sein, mit dem Leak des Cookies.