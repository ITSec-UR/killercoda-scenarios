In den Beispielen zuvor wurde der Container mit dem Image `nginx:latest` von [DockerHub](https://hub.docker.com/_/nginx) gebaut. Mithilfe der `Dockerfile` können auch eigene Images erstellt werden, von denen dann wieder Container mittels `run` gestartet werden können. Eigene Images können ebenfalls auf DockerHub für andere Nutzer veröffentlicht werden.

Legen Sie eine Dockerfile an und kopieren Sie die folgenden Anweisungen in diese.  
`touch Dockerfile`{{execute}}

Eine Dockerfile besteht aus Anweisungen, die das Image zusammenstellen und während des Buildingprozesses ausgeführt werden. Jede Anweisung steht in einer eigenen Zeile und besteht aus einem Befehl gefolgt mit seinen Argumenten. Jede Dockefile **muss** mit der `FROM`-Anweisung beginnen. Diese legt für das neue Image ein Basis-Image fest.  
`FROM nginx`{{copy}}

Mithilfe der `COPY`-Anweisung können Files vom Host-System in das neue Container-Image kopiert werden.  
`COPY ./html /usr/share/nginx/html/`{{copy}}

Die `RUN`-Anweisung führt einen Befehl auf der Kommandozeile aus.  
`RUN echo "<p>This is still an introduction to Docker</p>" >> /usr/share/nginx/html/index.html`{{copy}}

Bauen Sie von der Dockerfile ein Image mit dem Namen `new_nginx`.  
`docker build -t new_nginx .`{{execute}}

Überprüfen Sie, dass das Image `new_nginx` existiert.  
`docker images | grep new_nginx`{{execute}}