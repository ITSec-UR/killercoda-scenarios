In den Beispielen zuvor wurde der Container mit dem Image `nginx:latest` von [DockerHub](https://hub.docker.com/_/nginx) gebaut. Mithilfe der `Dockerfile` können auch eigene Images erstellt werden, von denen dann wieder Container mittels `run` gestartet werden können. Eigene Images können ebenfalls auf DockerHub für andere Nutzer veröffentlicht werden.

Legen Sie eine Dockerfile an.  
`touch Dockerfile`{{execute}}

Eine Dockerfile besteht aus Anweisungen, die das Image zusammenstellen und während des Buildingprozesses ausgeführt werden. Jede Anweisung steht in einer eigenen Zeile und besteht aus einem Befehl gefolgt mit seinen Argumenten. Jede Dockefile **muss** mit der `FROM`-Anweisung beginnen. Diese legt für das neue Image ein Basis-Image fest.
`echo 'FROM nginx' >> Dockerfile`{{execute}}

Mithilfe der `COPY`-Anweisung können Files vom Host-System in das neue Container-Image kopiert werden.  
`echo 'COPY ./html /usr/share/nginx/html/' >> Dockerfile`{{execute}}

Die `RUN`-Anweisung führt einen Befehl auf der Kommandozeile aus.  
`echo 'RUN echo "<p>This is still an introduction to Docker</p>" >> /usr/share/nginx/html/index.html' >> Dockerfile`{{execute}}

Lassen Sie sich nun die Dockerfile ausgeben.
`cat Dockerfile`{{execute}}

Bauen Sie nun Ihr neues Image mit dem Namen `new_nginx`.
`docker build -t new_nginx .`{{execute}}

Überprüfen Sie, dass das Image `new_nginx` existiert.
`docker images`{{execute}}

Sie können nun einen Container von dem Image `new_nginx` starten.
`docker run new_nginx -p 8080:80 --name web2 -d`{{execute}}

Beachten Sie, dass dieses Mal kein Volume angegeben wurde. Vergewissern Sie sich, dass die HTML-Files in den neuen Container `web2` kopiert wurden bzw. existieren. Sie können dazu eine Terminal in den laufenden Container öffnen und anschließend zu den Pfad `/usr/share/nginx/html/` wechseln.  
`docker exec -it web2 bash`{{execute}}  
`cd /usr/share/nginx/html/`{{execute}}  
`cat index.html`{{execute}}  

Schließen Sie die Terminal in Ihrem Container und öffnen Sie abschließend Ihre Webseite.  
`exit`{{execute}}  
https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/
