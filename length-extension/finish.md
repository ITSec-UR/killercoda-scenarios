Die vom Angreifer erstellte MAC (ohne Kenntnis von k) <br>
`2a134f5a38f800801202ce167afe825d82db8479` <br>
stimmt mit der vom Server berechneten MAC <br>
`2a134f5a38f800801202ce167afe825d82db8479`
überein. <br>
<br>
Der Server akzeptiert daher die erweiterte Nachricht als valide Bestellung.<br>
<br>
Nicht verständliche Teile der Nachricht (Padding) werden von dem Server verworfen, d. h. nur <strong>bus=1</strong> und <strong>&bus=50</strong> werden berücksichtigt.
Zudem wird nur die letzte Wertzuweisung akzeptiert, <strong>bus=1</strong> wird also durch <strong>bus=50</strong> überschrieben und eine Bestellung von 50 Bussen für Bob verbindlich im System des Fahrzeuglieferanten verbucht.