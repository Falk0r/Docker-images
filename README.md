# Docker-images

## Développement Web sur base PHP/Apache2/Linux

Commande de création de l'image Docker :
```
docker build -t xenial .
```

Pour synchroniser un dossier sous Linux lors du lancement de l'image :
```
docker run -ti -p 8080:80 -v $(pwd)/data:/var/www/html/ xenial bash
```
Le serveur est à écouter sur le port 8080 :
```
http://127.0.0.1:8080/
```
