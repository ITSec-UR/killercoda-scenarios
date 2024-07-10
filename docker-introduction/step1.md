Hosten Sie einen nginx-Server mithilfe von Docker. Nginx ist ein kostenloser und leichtgewichtiger Open-Source-HTTP-Server, der auf die Bearbeitung großer Anfragenmengen spezialisiert ist.  
`docker run -p 80:80 -v /root/html:/usr/share/nginx/html -d nginx`{{execute}} 

Option | Beschreibung 
--- | --- |
 *p* | Port Mapping (Host:Container) - Bindet den Port des Containers am Host, d. h. der Service des Containers ist nun von außen erreichbar.
 *v* | Volume (Host:Container) - Mountet den Ordner vom Host im Container, d. h. auf die Daten im Ordner können sowohl Host als auch Container zugreifen und miteinander ausgetauscht werden.
 *d* | Detached - Container wird als Daemon gestartet, d. h. dieser läuft im Hintergrund.

Der ausgeführte Befehl gibt die einzigartige ID des Containers zurück. Mit dieser können Sie später den Container ansteuern.

Vergewissern Sie sich nun, dass Ihr Container läuft.  
`docker ps`{{execute}}