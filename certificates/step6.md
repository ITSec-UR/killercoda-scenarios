Erstellen Sie ein selbstsigniertes Zertifikat für eine Domain Ihrer Wahl (`my-domain.cer`) und speichern Sie den privaten Schlüssel in einer Schlüsseldatei (`my-domain.key`) ab. 

`openssl req -x509 -newkey rsa:4096 -sha256 -days 365 -out my-domain.cer -keyout my-domain.key`{{execute}}

Lassen Sie sich den Inhalt des Zertifikats anzeigen und überprüfen Sie die Richtigkeit der enthaltenen Daten.

`openssl x509 -text -noout -in my-domain.cer`{{execute}}