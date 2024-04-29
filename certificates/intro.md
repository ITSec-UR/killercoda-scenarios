In diesem Szenario soll der praktische Umgang mit Zertifikaten mithilfe der Anwendung OpenSSL geübt werden. <br>

Die vier Teilaufgaben des Szenarios umfassen

1) Auslesen der wichtigsten Informationen aus einem gegebenen X.509 Zertifikat
2) Nachvollziehen einer Zertifikatskette
3) Manuelle Überprüfung der Signatur einer Root CA auf dem Zertifikat einer untergeordneten CA
4) Erstellen eines selbstsignierten Zertifikats mit eigenen Daten

<img src="https://gitlab.itsec.ur.de/itsec/uebung/killercoda-scenarios/-/raw/main/certificates/assets/openssl-logo.svg">

OpenSSL ist eine freie Software für TLS, welche auf UNIX Systemen vorinstalliert ist. 
Sie umfasst Implementierungen der Netzwerkprotokolle und verschiedener Verschlüsselungen sowie das Programm `openssl`{{}} 
für die Kommandozeile zum Beantragen, Erzeugen und Verwalten von Zertifikaten.