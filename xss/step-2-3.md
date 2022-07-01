Eine weitere Möglichkeit zur Übernahme einer Session ist ein Session Fixation Angriff, bei dem der Angreifer
seinem Opfer eine Session-ID vorgibt. Dies kann bei einer anfälligen Webseite bspw. über einen Link mit URL-Parameter
`webseite.com?session=123`{{}} geschehen. Der Angreifer kennt also die Session-ID bereits vorab. 
Meldet sich das Opfer nun unter Verwendung dieser ID an, hat der Angreifer Zugriff auf die authentifizierte Session.

Auf der SkyBalloon Webseite gilt, dass wenn der Parameter `session`{{}} in der URL enthalten ist, dessen Wert 
anstelle einer zufälligen neuen ID verwendet wird.

In dieser Aufgabe müssen Sie entweder sowohl die Rolle des Angreifers als auch des Opfers übernehmen oder Sie bearbeiten die Aufgabe mit einem willigen Kommilitonen in der Rolle des Opfers.

Rufen Sie zunächst die Webseite in einem anderen Opfer-Browser (z.B. FireFox/Chrome/Edge) auf und vergewissern Sie sich, dass Ihnen in beiden Browsern unterschiedliche Session-IDs zugewiesen wurden.

Nun übernehmen Sie wieder die Rolle des Angreifers. Erstellen Sie einen schadhaften Link, der zur Anmeldeseite führt. Der Link soll außerdem wie oben gezeigt eine fixe (beliebig gewählte) Session-ID starten. Schicken Sie diesen Link mit einer ausgewählten Nachricht zum Opfer. Die Nachricht sollte so gewählt sein, dass das Opfer dem Link folgt und sich auf der Webseite anmeldet.

Spielen Sie das Opfer und melden Sie sich an. Versuchen Sie nun, in ihrem Angreifer-Browser dieselbe Session-ID zu setzen (die Ihnen ja bekannt ist) und ein neues Highlight zu erstellen.
Sie sollten bereits authentifiziert sein und ohne Anmeldeaufforderung auf den Editor zugreifen können.