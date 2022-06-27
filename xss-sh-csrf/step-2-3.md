Eine weitere Möglichkeit zur Übernahme einer Session ist ein Session Fixation Angriff, bei dem der Angreifer
seinem Opfer eine Session-ID vorgibt. Dies kann bei einer anfälligen Webseite bspw. über einen Link mit URL-Parameter
`webseite.com?session=123`{{}} geschehen. Der Angreifer kennt also die Session-ID bereits vorab. 
Meldet sich das Opfer nun unter Verwendung dieser ID an, hat der Angreifer Zugriff auf die authentifizierte Session.

Auf der SkyBalloon Webseite gilt, dass wenn der Parameter `session`{{}} in der URL enthalten ist, dessen Wert 
anstelle einer zufälligen neuen ID verwendet wird.

Rufen Sie zunächst die Webseite in einem anderen "Opfer-Browser" auf und vergewissern Sie sich, 
dass Ihnen in beiden Browsern unterschiedliche Session-IDs zugewiesen wurden.

Erstellen Sie einen Link mit einer beliebig gewählten (neuen) Session-ID und melden Sie im "Opfer-Browser" an.
Versuchen Sie nun, in ihrem "Angreifer-Browser" dieselbe Session-ID zu setzen und ein neues Highlight zu erstellen.
Sie sollten bereits authentifiziert sein und ohne Anmeldeaufforderung auf den Editor zugreifen können.