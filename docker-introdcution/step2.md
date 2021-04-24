In Docker haben Container sowohl eine ID als auch einen Namen. Da Sie beim Starten des Containers keinen Namen spezifiziert haben, wurde dem Container ein zufälliger Name zugeteilt. Sie können den Container sowohl mit der ID als auch mit dem Namen ansprechen.

Stoppen Sie Ihren Container und vergewissern Sie sich wieder, dass Ihr Container gestoppt wurde.
`docker stop {CONTAINER_ID|CONTAINER_NAME}`
`docker ps`{{execute}}

Sie werden Ihren Container nicht finden, da dieser Befehl nur die laufenden Container ausgibt. Sie können alle bestehenden Container mit dem folgenden Befehl ausgeben.
`docker ps -a`{{execute}}

Löschen Sie nun Ihren Container und lassen Sie sich wieder alle bestehenden Container ausgeben.
`docker rm {CONTAINER_ID|CONTAINER_NAME}`
`docker ps -a`{{execute}}