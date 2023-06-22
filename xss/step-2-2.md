Sie überlegen, dass es viel praktischer wäre, wenn die Session-IDs authentifizierter Nutzer automatisch immer
beim Aufruf der SkyBalloon Webseite eine Seite auf Ihrem eigenen Webserver übermittelt werden würden, 
damit Sie bei Bedarf sofort Zugriff auf eine aktuelle Session haben.

*Tipp: Sie erreichen Ihren Angreifer-Webserver unter dieser [Domain]({{TRAFFIC_HOST1_82}}). 
Die PHP-Dateien für die in den folgenden Aufgaben zu erstellenden Webseiten befinden sich im Ordner `web-attacker`{{}}. Falls dieser im Editor nicht sichrbar ist, klicken Sie oben links den 'Refresh Explorer' Button.*

Aus vorherigen Erfahrungen wissen Sie, dass die Opfer-Webseite anfällig gegenüber persistenten XSS-Angriffen ist.

Entwickeln Sie einen JavaScript Code, der bei jedem Aufruf der SkyBalloon Webseite die Session-ID des jeweiligen Nutzers 
ausliest und als URL-Parameter an Ihre Webseite [xss-cookie.php]({{TRAFFIC_HOST1_82}}/xss-cookie.php) 
übermittelt. Schleusen Sie Ihren Code anstelle eines Highlights in der Webseite ein.

Implementieren Sie Ihre Webseite `xss-cookie.php`{{}} so, dass die erhaltene Session-ID in einer TXT-Datei abgespeichert
wird und deren Inhalt auf der Webseite einsehbar ist.

*Tipp: Sie können über den integrierten Visual Studio Code Editor (linkes Tab) direkt in Killercoda arbeiten. 
Alternativ steht es Ihnen natürlich frei, in einem Editor oder IDE Ihrer Wahl zu programmieren 
und Ihren Code anschließend in die Killercoda Datei zu übertragen.*

>12: Tipp und Lösung JavaScript

>13: Tipp und Lösung xss-cookie.php
