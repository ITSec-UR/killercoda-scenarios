Als Erstes benötigen Sie für eine täuschend echte Fälschung des Login-Fensters dessen HTML-Code.

Suchen Sie diesen Bestandteil im Quellcode der SkyBalloon Webseite und kopieren Sie ihn in die Datei `fake-login.php`{{}}.

*Tipp: Sie erreichen Ihren Angreifer-Webserver unter dieser [Domain]({{TRAFFIC_HOST1_82}}). 
Die PHP-Dateien für die in den folgenden Aufgaben zu erstellenden Webseiten befinden sich im Ordner `web-attacker`{{}}.*

Das Design der Webseite wird jedoch nicht direkt im HTML-Code festgelegt, sondern mittels separat ausgelieferten CSS-Dateien, 
die Sie im Reiter **Sources** einsehen können.
Sie können diese Stylesheets durch einen Link auf die Dateien der originalen Webseite auch in Ihre gefälschte
Login-Seite einbinden, sodass das gefälschte Login-Fenster genauso gestylt wird wie das echte.

Ergänzen Sie abschließend noch den PHP-Code zur Verarbeitung der abgegriffenen Login-Daten.
Wenn der Nutzer in der gefälschten Anmeldemaske seine Login-Daten eingibt, sollen sie statt an die SkyBalloon Webseite
an Ihre eigene Login-Seite `fake-login.php`{{}} geschickt und in einer TXT-Datei abgespeichert werden.

Die Seite ist auf Ihrem Server erreichbar unter [fake-login.php]({{TRAFFIC_HOST1_82}}/fake-login.php).

>15: Lösung fake-login.php
