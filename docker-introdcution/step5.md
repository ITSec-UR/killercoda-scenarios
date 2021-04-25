Starten Sie einen Container mit dem Image `new_nginx`.  
`docker run new_nginx -p 8080:80 --name web2 -d`{{execute}}

Beachten Sie, dass dieses Mal kein Volume angegeben wurde. Vergewissern Sie sich, dass die HTML-Files in den neuen Container `web2` kopiert wurden bzw. existieren. Sie können dazu eine Terminal in den laufenden Container öffnen und anschließend zu den Pfad `/usr/share/nginx/html/` wechseln.  
`docker exec -it web2 bash`{{execute}}  
`cd /usr/share/nginx/html/`{{execute}}  
`cat index.html`{{execute}}  

Schließen Sie die Terminal in Ihrem Container und öffnen Sie abschließend Ihre Webseite.  
`exit`{{execute}}  
https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/
