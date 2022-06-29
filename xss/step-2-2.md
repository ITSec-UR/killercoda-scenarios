Sie überlegen, dass es viel praktischer wäre, wenn die Session-IDs authentifizierter Nutzer automatisch immer
beim Aufruf der SkyBalloon Webseite eine Seite auf Ihrem eigenen Webserver übermittelt werden würden, 
damit Sie bei Bedarf sofort Zugriff auf eine aktuelle Session haben.
Sie erreichen Ihren eigenen Webserver unter dieser [Domain]({{TRAFFIC_HOST1_82}}).

Aus vorherigen Erfahrungen wissen Sie, dass die Webseite anfällig gegenüber persistenten XSS-Angriffen ist.

Entwickeln Sie einen JavaScript Code, der bei jedem Aufruf der Webseite die Session-ID des jeweiligen Nutzers 
ausliest und als URL-Parameter an Ihre Webseite [xss-cookie.php]({{TRAFFIC_HOST1_82}}/xss-cookie.php) 
übermittelt. Schleusen Sie Ihren Code anstelle eines Highlights in der Webseite ein.

Implementieren Sie Ihre eigene Webseite in der PHP-Datei `xss-cookie.php`{{}} so, dass die erhaltene Session-ID  
in einer TXT-Datei abgespeichert wird und deren Inhalt auf der Webseite einsehbar ist. Sie können die Datei im 
Visual Studio Code Editor bearbeiten (linkes Tab, ggf. aktualisieren nötig).

>11: Tipp und Lösung JavaScript

>12: Tipp und Lösung xss-cookie.php