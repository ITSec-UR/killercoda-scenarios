Zuerst soll der Hashwert aus der Signatur des Zertifikats ausgelesen werden.

Der dazu nötige öffentliche Testschlüssel der Root CA ist `root.key` abgespeichert und die Signatur im Binärformat in `sig.bin`.

Entschlüsseln Sie zunächst die Signatur und speichern Sie das Ergebnis in einer neuen Datei.

`openssl rsautl -verify -inkey root.key -in sig.bin -pubin > sig-dec.bin`{{execute}}

Lassen Sie sich anschließend den Hashwert des Zertifikats auf der Konsole ausgeben.

`openssl asn1parse -inform der -in sig-dec.bin`{{execute}}

>>8) Kopieren Sie den Hashwert in das Antwortfeld.<<
=== 444EBD67BB83F8807B3921E938AC9178B882BD50AADB11231F044CF5F08DF7CE
