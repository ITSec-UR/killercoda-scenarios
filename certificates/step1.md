In Ihrem Arbeitsbereich ist ein Zertifikat für eine Website mit Cocktail Rezepten hinterlegt. Lassen Sie sich den Inhalt des Zertifikats mithilfe von OpenSSL anzeigen und beantworten Sie die folgenden Fragen.

`openssl -text -noout webpage.cer`{{execute}}
<br>

>>1) Wer ist der Inhaber des Zertifikats?<<
=== cocktails.de

>>2) Von welcher Organisation wurde das Zertifikat ausgestellt?<< 
=== Let's Encrypt

>>3) Wann verliert das Zertifikat seine Gültigkeit? (Format: TT.MM.JJJJ)<<
=== 08.07.2022

>>4) Wie viele Monate ist das Zertifikat gültig?
=== 3

>>5) Welcher Signaturalgorithmus wurde verwendet? Kopieren Sie den exakten Wert aus dem Zertifikat in das Antwortfeld.<<
=== sha256WithRSAEncryption