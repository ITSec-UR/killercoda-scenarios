Eine weitere Möglichkeit zur Übernahme einer Session ist der sogenannte **Session-Fixation-Angriff**, bei dem der Angreifer dem Opfer gezielt eine Session-ID vorgibt.  
Dies kann beispielsweise über einen präparierten Link mit URL-Parameter wie `webseite.com?session=123`{{}} erfolgen.  
Da der Angreifer die Session-ID bereits vorab kennt, kann er – sobald sich das Opfer unter dieser ID anmeldet – auf die *authentifizierte Session* zugreifen.

Auf der SkyBalloon Webseite gilt, dass wenn der Parameter `session`{{}} in der URL enthalten ist, dessen Wert anstelle einer zufälligen neuen ID verwendet wird.

### Vorgehensweise

In dieser Aufgabe müssen Sie entweder sowohl die Rolle des Angreifers als auch des Opfers übernehmen oder Sie bearbeiten die Aufgabe mit einem Kommilitonen in der Rolle des Opfers.

1. Öffnen Sie die SkyBalloon-Webseite in einem separaten „Opfer“-Browser (z. B. FireFox/Chrome/Edge) und vergewissern Sie sich, dass Ihnen in beiden Browsern unterschiedliche Session-IDs zugewiesen wurden.
2. Wechseln Sie zurück in die Rolle des Angreifers. Erstellen Sie einen schadhaften Link, der zur Anmeldeseite führt. Der Link soll außerdem wie oben gezeigt eine fixe (beliebig gewählte) Session-ID starten.
3. Versenden Sie diesen Link zusammen mit einer passenden Nachricht an das Opfer. Die Nachricht sollte so formuliert sein, dass das Opfer dem Link vertraut und sich auf der Zielseite anmeldet.
4. Spielen Sie nun die Opferrolle: Rufen Sie den Link im Opfer-Browser auf und melden Sie sich wie gewohnt an.
5. Wechseln Sie erneut zum Angreifer-Browser. Setzen Sie dort dieselbe Session-ID (die Sie ja bereits kennen) über den `session`-Parameter und versuchen Sie, ein neues Highlight zu erstellen.

Sie sollten bereits authentifiziert sein und ohne Anmeldeaufforderung auf den Editor zugreifen können.

>15: Beispiellink Session Fixation