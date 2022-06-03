In Ihrem Arbeitsbereich ist ein Zertifikat für eine Website mit Cocktail Rezepten hinterlegt. 
Lassen Sie sich den Inhalt des Zertifikats mithilfe von OpenSSL anzeigen und beantworten Sie die folgenden Fragen.

`openssl x509 -text -noout -in webpage.cer`{{execute}}

1
> Wer ist der Inhaber des Zertifikats?

2 
> Von welcher Organisation wurde das Zertifikat ausgestellt?

3 
> Wann verliert das Zertifikat seine Gültigkeit? (Format: TT.MM.JJJJ)

4 
> Wie viele Monate ist das Zertifikat gültig?
 
5 
> Welcher Signaturalgorithmus wurde verwendet? Kopieren Sie den exakten Wert aus dem Zertifikat in das Antwortfeld.