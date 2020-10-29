# Explication
Dans le footer du site on trouve un lien sur ***© BornToSec***, dans le code source de cette page il y a un très long commentaire avec 2 informations qui vont nous aider:
```
You must cumming from : "https://www.nsa.gov/" to go to the next step
Let's use this browser : "ft_bornToSec". It will help you a lot.
```

On va donc utiliser **Curl** pour recharger la page en lui indiquant qu'on vient de www.nsa.gov et sur le navigateur ft_bornToSec avec la commande suivante:

```shell
curl -e https://www.nsa.gov/ -A ft_bornToSec 'http://IP/?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c' | grep flag 
```

'*-e*' va nous servir à récupérer un certificat et '*-A*' à indiquer le navigateur utilisé

# Comment l'éviter ?
Pour éviter ce genre d'attaque il faut sécuriser les données sensibles par des mots de passe et ne pas donner d'accès en fonction d'où vient l'utilisateur.
sources: https://owasp.org/www-community/controls/Blocking_Brute_Force_Attacks