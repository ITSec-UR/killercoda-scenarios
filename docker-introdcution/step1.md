Hosten Sie einen nginx-Server mithilfe von Docker. Nginx ist ein kostenloser und leichtgewichtiger Open-Source-HTTP-Server, der auf die Bearbeitung großer Anfragenmengen spezialisiert ist.
`docker run -p 80:80 -v /root/html:/usr/share/nginx/html -d nginx`{{execute}}

Folgende Optionen wurden getroffen
- *p* &nbsp;&nbsp; Port Mapping (Host:Container)
- *v* &nbsp;&nbsp; Volume (Host:Container)
- *d* &nbsp;&nbsp; Detached (Container wird als Daemon gestartet)

Der ausgeführte Befehl gibt die einzigartige ID des Containers zurück. Mit dieser können Sie später den Container ansteuern.

Vergewissern Sie sich nun, dass Ihr Container läuft.
`docker ps`{{execute}}