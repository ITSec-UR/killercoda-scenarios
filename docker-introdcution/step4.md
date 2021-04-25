In den Beispielen zuvor wurde der Container mit dem Image `nginx:latest` von [DockerHub](https://hub.docker.com/_/nginx) gebaut. Mithilfe der `Dockerfile` können auch eigene Images erstellt werden, von denen dann wieder Container mittels `run` gestartet werden können. Eigene Images können ebenfalls auf DockerHub für andere Nutzer veröffentlicht werden.

Legen Sie eine Dockerfile an.  
`touch Dockerfile`{{execute}}

Eine Dockerfile besteht aus Anweisungen, die das Image zusammenstellen. Jede Anweisung steht in einer eigenen Zeile und besteht aus einem Befehl gefolgt mit seinen Argumenten. Jede Dockefile **muss** mit der `FROM`-Anweisung beginnen. Diese legt für das neue Image ein Basis-Image fest.
`echo "FROM Ubuntu" >> Dockerfile`{{execute}}