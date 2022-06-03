Zuerst soll der Hashwert aus der Signatur des Intermediär-Zertifikats ausgelesen werden.

Der dazu nötige öffentliche Testschlüssel der Root CA ist in `root.pub`{{}} und die Signatur im Binärformat in `sig.bin`{{}} abgespeichert.

Wenden Sie zunächst den Testschlüssel auf die Signatur an und speichern Sie das Ergebnis in eine neue Datei.

`openssl rsautl -verify -inkey root.pub -in sig.bin -pubin > sig-dec.bin`{{execute}}

Lassen Sie sich anschließend den Hashwert des Zertifikats auf der Konsole ausgeben.

`openssl asn1parse -inform der -in sig-dec.bin`{{execute}}

8 > Kopieren Sie den Hashwert in das Antwortfeld.
