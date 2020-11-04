# Explication
Sur la page ***Home*** on peut cliquer sur une image de la nsa qui nous amène à la page http://IP/?page=media&src=nsa <br>
Dans cette URL on trouve un *src=nsa*, le *nsa* ne correspond pas à un fichier et si on le change on a un message d'erreur, il est donc lu.<br>

Le navigateur nous protège contre les injections en black-listant certains termes<br>
Pour pouvoir envoyer une commande il va falloir l'encoder en **base64**<br>

par exemple :
```
<script>alert("Hello")</script> = PHNjcmlwdD5hbGVydCgiSGVsbG8iKTwvc2NyaXB0Pg==
```
On va suivre le protocole [RFC2397](https://tools.ietf.org/html/rfc2397) qui permet d'envoyer des données dans l'URL.<br>

On obtient la commande suivante:
```
http://IP/?page=media&src=%220;url=data:text/html;base64,PHNjcmlwdD5hbGVydCgiSGVsbG8iKTwvc2NyaXB0Pg==%22
```


# Comment l'éviter ?
Pour éviter les failles XSS [OWASP](https://owasp.org/) conseille au minimum de ne jamais entrer du contenu exterieur directement dans du html et d'encoder tout ce qui peut être utilisé pour injecter du code ( &, <, >, ", ', / )<br>
```
- & --> &amp;
- < --> &lt;
- > --> &gt;
- " --> &quot;
- ' --> &#x27;
- / --> &#x2F;
```

# Sources
XSS Using Code Encoding <br>
source : https://owasp.org/www-community/attacks/xss/

Preventing XSS<br>
source : https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html

Exemple XSS
source :https://www.paladion.net/blogs/bypass-xss-filters-using-data-uris