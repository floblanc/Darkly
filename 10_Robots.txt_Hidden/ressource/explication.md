# Explication
Dans **robots.txt** on trouve /.hidden<br>
À cette adresse on trouve une liste de dossiers qui contient des dossiers qui contiennent des dossiers qui contiennent des README...<br>
Et dans un de ces README il y a le flag<br>
Pour le récupérer on va récupérer les README avec **wget**
```shell
wget -e robots=off -r -np -nd -R "index*" http://IP/.hidden/
```
Une fois tous les README récupérés on va lancer un script qui va nous sortir le contenu des README qui n'apparait qu'une seule fois et donc obtenir le flag.

# Comment l'éviter ?
Il faut proteger la page en question avec un .htaccess.

source : https://www.opentechguides.com/how-to/article/apache/115/htaccess-file-dir-security.html