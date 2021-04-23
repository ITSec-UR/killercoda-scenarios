Hosten Sie einen nginx-Server mithilfe von Docker. Nginx ist ein kostenloser und leichtgewichtiger Open-Source-HTTP-Server, der auf die Bearbeitung großer Anfragenmengen spezialisiert ist.
`docker run -p 80:80 -v /root/html:/usr/share/nginx/html -d nginx`{{execute}}

Folgende Optionen wurden getroffen
 - *p*: Port Binding (Host:Container)
 - *v*: Volume (Host:Container)
 - *d*: Detached (Container wird als Daemon gestartet)

Vergewissern Sie sich nun, dass Ihr Container läuft.
`docker ps -a`{{execute}}

In Docker können Container sowohl mit ihrer einzigartigen ID als auch mit ihrem Namen angesprochen werden. Sie haben beim Starten des Containers keinen Namen spezifiziert, weshalb Ihr Container einen zufälligen Namen erhalten hat.

Legen Sie nun eine `index.html` an.