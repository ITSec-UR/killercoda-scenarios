In den Beispielen zuvor wurde der Container mit dem Image `nginx:latest` von [DockerHub](https://hub.docker.com/_/nginx) gebaut. Mithilfe der `Dockerfile` können auch eigene Images erstellt werden, von denen dann wieder Container mittels `run` gestartet werden können. Eigene Images können ebenfalls auf DockerHub für andere Nutzer veröffentlicht werden.

Legen Sie eine Dockerfile an.  
`touch Dockerfile`{{execute}}

Eine Dockerfile besteht aus Anweisungen, die das Image zusammenstellen. Jede Anweisung steht in einer eigenen Zeile und besteht aus einem Befehl gefolgt mit seinen Argumenten. Jede Dockefile **muss** mit der `FROM`-Anweisung beginnen. Diese legt für das neue Image ein Basis-Image fest.
`echo 'FROM nginx' >> Dockerfile`{{execute}}

Kopieren Sie die statischen HTML-Files.
`echo 'COPY ./html /usr/share/nginx/html/' >> Dockerfile`{{execute}}

`echo 'RUN echo "<p>This is still an introduction to Docker</p>" >> /usr/share/nginx/html/index.html' >> Dockerfile`{{execute}}

`docker build -t new_nginx .`{{execute}}
`docker run new_nginx -p 8080:80 -d`{{execute}}

Öffnen Sie nun Ihre Webseite.
https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/
