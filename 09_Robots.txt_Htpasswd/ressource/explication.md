# Explication
En accédant au ***robots.txt*** du site (http://IP/robots.txt) on découvre que 2 fichiers sont Disallow<br>
le premier ***/whatever*** nous amène sur une page ou l'on peut télécharger un fichier ***htpasswd***<br>

htpasswd:
```
root:8621ffdbc5698829397d97767ac13db3
```
En entrant **8621ffdbc5698829397d97767ac13db3** sur google on découvre que c'est le md5 de **dragon**

On peut donc aller sur la page ***/admin*** et rentrer les identifiants :
```
Username : root
Password : dragon
```
# Comment l'éviter ?
Il faut protéger la page en question avec un .htaccess.