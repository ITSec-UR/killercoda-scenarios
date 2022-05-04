Nun soll der Hashwert des Zertifikats `intermediate.cer` berechnet werden.

Im ursprünglichen Zertifikat ist noch keine Signatur enthalten, daher muss diese aus der vorliegenden Datei entfernt und der übrige Inhalt im Binärformat in einer neuen Datei `cert-body.bin` abgespeichert werden.

`openssl asn1parse -in intermediate.cer -strparse 4 -out cert-body.bin -noout`{{execute}}

Zuletzt wird die Hashfunktion SHA-256 auf die Binärdatei angewandt, um den Hashwert zu berechnen.

`openssl dgst -sha256 cert-body.bin`{{execute}}

>>9) Stimmt dieser Hashwert mit dem aus der Signatur überein?<<
=== JA