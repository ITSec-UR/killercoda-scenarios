Wechseln Sie nun zurück in die Rolle des Opfers.  
Rufen Sie die Webseite [xss-iframe.php]({{TRAFFIC_HOST1_82}}/xss-iframe.php) auf und melden Sie sich dort ganz normal an.

Der Angriff war erfolgreich sein, wenn
1. `xss-iframe.php`{{}} hat durch eine automatisierte POST-Anfrage erfolgreich eine Weiterleitung zur Seite  [skyballoon-domain/index.php?login]({{TRAFFIC_HOST1_81}}/index.php?login) ausgelöst.
2. Die SkyBalloon-Webseite hat das übermittelte Feld `username`{{}} ungeprüft verarbeitet und dadurch in der Fehlermeldung das [Iframe des Angreifers]({{TRAFFIC_HOST1_82}}/fake-login.php) eingebettet
3. Über das Style-Attribut wurde das Iframes mit der Fake-Login-Seite über die originale Login-Seite gelegt.
