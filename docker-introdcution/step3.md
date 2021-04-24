Starten Sie erneut einen Nginx-Container. Spezifizieren Sie dieses Mal den Namen.  
`docker run -p 80:80 -v /root/html:/usr/share/nginx/html --name web -d nginx`{{execute}}

Erstellen Sie nun die `index.html`. Legen Sie dazu zunächst eine neue Datei an und kopieren Sie den Inhalt in diese.  
`tocuh html/index.html`{{execute}}  

<!DOCTYPE html>
<html>
    <head>
        <title>Example</title>
    </head>
    <body>
        <h2>Hello World</h2>
    </body>
</html>{{copy}}