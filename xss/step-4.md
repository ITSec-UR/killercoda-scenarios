Bei einem Cross-Site Request Forgery Angriff handelt es sich um einen Angriff,
der durch unsichere Cookie-Einstellungen einer Webseite ermöglicht wird.

Lesen Sie sich [hier](https://web.dev/i18n/de/samesite-cookies-explained/#was-sind-erstanbieter-und-drittanbieter-cookies)
die Abschnitte zu 1st und 3rd Party Cookies, dem Samesite-Attribut und dem Standardverhalten des Browsers diesbezüglich durch.

>17: Welche drei Werte können für Samesite-Attribut gesetzt werden?

>18: Wie lautet der Default-Wert für das Samesite-Attribut, wenn nichts anderes spezifiziert wurde?

Wie im verlinkten Artikel am Beispiel der Webseite `evil.example`{{}} erwähnt, sollen Sie nun in der Datei `csrf.php`{{}}
eine Webseite erstellen, die beim Aufruf eine POST-Anfrage zur Erstellung eines Highlights an die SkyBalloon Webseite auslöst.

Voraussetzung für diesen Angriff ist, dass sich ein Nutzer vor dem Besuch Ihrer Angreifer-Webseite
[csrf.php]({{TRAFFIC_HOST1_82}}/csrf.php.php) auf bei SkyBalloon angemeldet hat und die Session noch aktiv ist.

Da der Cookie auf SkyBalloon ein Ablaufdatum von 1 Stunde besitzt, bedeutet das, dass die SkyBalloon Session noch aktiv ist. 
Da der Cookie bei der Anfrage mitgesendet wird, ist die Anfrage zur Erstellung eines Hightlights authentisiert und autorisiert.

>19: Tipp und Lösung csrf.php