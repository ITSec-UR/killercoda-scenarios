Starten Sie erneut einen Nginx-Container. Spezifizieren Sie dieses Mal den Namen.  
`docker run -p 80:80 -v /root/html:/usr/share/nginx/html --name web -d nginx`{{execute}}

Erstellen Sie nun die `index.html`. Legen Sie dazu zunächst eine neue Datei an und kopieren Sie den Inhalt in diese.  
`touch html/index.html`{{execute}}  

```<!DOCTYPE html>
<html>
    <head>
        <title>Example</title>
    </head>
    <body>
        <h2>Hello World</h2>
    </body>
</html>```{{copy}}

Alternativ können Sie auch `echo` nutzen.  
`echo "<!DOCTYPE html>\n<html>\n<head>\n<title>Example</title>\n</head>\n<body>\n<h2>Hello World</h2>\n</body>\n</html>" > html/index.html`{{execute}}

Öffnen Sie nun Ihre Webseite.
https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/