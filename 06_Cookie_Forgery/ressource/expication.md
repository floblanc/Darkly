# Explication
Dans l'inspecteur d'élément, onglet application, on peut avoir accès aux cookies.<br>
On y trouve le cookie : <br>
```
I_am_admin | 68934a3e9455fa72420237eb05902327 | md5(false)
```
En entrant sa valeur sur google on ce rend compte qu'elle est égale à **false** en md5<br>
Si on remplace cette valeur par **true** en md5 et qu'on recharge la page on obtient le flag
```
I_am_admin | b326b5062b2f0e69046810717534cb09 | md5(true)
```

# Comment l'éviter ?
Il ne faut pas avoir de valeur modifiable en front donc pour régler le problème le mieux est d'utliser des tokens générés en back.<br>
Le token est unique, a une date de validité et permet de gérer les droits comme les administrateurs.

sources :
- https://owasp.org/www-pdf-archive/CSRF_062209.pdf
- https://cheatsheetseries.owasp.org/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.html