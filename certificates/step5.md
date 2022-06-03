Nun soll der Hashwert des Zertifikats `intermediate.cer`{{}} berechnet werden.

Ein Zertifikat enthält bei der Berechnung des Hashwerts noch keine Signatur, daher muss die Signatur aus dem vorliegenden Zertifikat entfernt und der übrige Inhalt im Binärformat in einer neuen Datei `cert-body.bin` abgespeichert werden.

`openssl asn1parse -in intermediate.cer -strparse 4 -out cert-body.bin -noout`{{execute}}

Zuletzt wird die Hashfunktion SHA-256 auf die Datei angewandt, um den Hashwert zu berechnen.

`sha256sum cert-body.bin`{{execute}}

9 > Stimmt dieser Hashwert mit dem aus der Signatur überein?