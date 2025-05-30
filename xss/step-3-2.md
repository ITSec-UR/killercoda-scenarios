Sie überlegen, dass es viel praktischer wäre, wenn beim Aufruf der SkyBalloon Webseite durch einen 
authentifizierten Nutzer dessen Session-ID immer automatisch Ihren eigenen Webserver übermittelt werden. 
So haben Sie bei Bedarf sofort Zugriff auf eine aktuelle Session.

*Tipp: Sie erreichen Ihren Angreifer-Webserver unter der [Angreifer-Domain]({{TRAFFIC_HOST1_82}}). 
Die PHP-Dateien für die in den folgenden Aufgaben zu erstellenden Webseiten befinden sich im Ordner `web-attacker`{{}}. 
Falls dieser im Editor nicht sichtbar ist, klicken Sie oben links den 'Refresh Explorer' Button.*

Aus vorherigen Erfahrungen wissen Sie, dass die Opfer-Webseite anfällig gegenüber persistenten XSS-Angriffen ist.

Entwickeln Sie einen JavaScript Code, der bei jedem Aufruf der SkyBalloon Webseite die Session-ID des jeweiligen Nutzers 
ausliest und als URL-Parameter an Ihre Webseite [xss-cookie.php]({{TRAFFIC_HOST1_82}}/xss-cookie.php) 
übermittelt. Schleusen Sie Ihren Code anstelle eines Highlights in der Webseite ein.

Implementieren Sie Ihre Webseite `xss-cookie.php`{{}} so, dass die erhaltene Session-ID in einer TXT-Datei abgespeichert
wird und deren Inhalt auf der Webseite einsehbar ist.

*Tipp: Sie können über den integrierten Visual Studio Code Editor (linkes Tab) direkt in Killercoda arbeiten. 
Alternativ steht es Ihnen natürlich frei, in einem Editor oder IDE Ihrer Wahl zu programmieren 
und Ihren Code anschließend in die Killercoda Datei zu übertragen.*

*Tipp: Sie können den Leak sehen, indem Sie die Entwicklertools Ihres Browsers im Netzwerk-Tab öffnen. Hier sollte die Anfrage an <attacker_domain> aufgelistet sein, mit dem Leak des Cookies.*

>13: Tipp und Lösung JavaScript

>14: Tipp und Lösung xss-cookie.php