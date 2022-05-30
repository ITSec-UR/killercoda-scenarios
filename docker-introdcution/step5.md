Starten Sie einen Container mit dem Image `new_nginx`.  
`docker run new_nginx -p 8080:80 --name web2 -d`{{execute}}

Beachten Sie, dass dieses Mal kein Volume angegeben wurde. Vergewissern Sie sich, dass die HTML-Files in den neuen Container `web2` kopiert wurden bzw. existieren. Sie können dazu eine Terminal in den laufenden Container öffnen und anschließend zu den Pfad `/usr/share/nginx/html/` wechseln.  
`docker exec -it web2 bash`{{execute}}

| Option | Beschreibung                                                              |
| ------ | ------------------------------------------------------------------------- |
| _i_    | Interactive - Hält den STDIN offen, auch wenn Container als Daemon läuft. |
| _t_    | TTY - Startet Pseudo-TTY mit `/bin/bash`.                                 |

`cat /usr/share/nginx/html/index.html`{{execute}}

Schließen Sie die Terminal in Ihrem Container und öffnen Sie abschließend Ihre Webseite.  
`exit`{{execute}}

[Webseite]({{TRAFFIC_HOST1_8080}})
