Starten Sie erneut einen Nginx-Container. Spezifizieren Sie dieses Mal den Namen.
`docker run -p 80:80 -v /root/html:/usr/share/nginx/html --name web -d nginx`{{execute}}