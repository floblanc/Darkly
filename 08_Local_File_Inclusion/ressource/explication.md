# Expication
Sur certaines pages du site comme *http://IP/?page=survey* le *survey* correspond à un fichier qui est chargé<br>
On peut donc le remplacer pour essayer d'accéder à un autre fichier ou se balader dans les dossiers si ces derniers ne sont pas bloqués.<br>

Si on essaye de remonter dans l'arborecence avec "../" le site nous met des alertes ce qui est bon signe.<br>
Tout en remontant on peut essayer d'accéder à des fichiers comme "etc/passwd" qui est un fichier classique.

Arrivé à http://IP/?page=../../../../../../../etc/passwd le site nous donne le flag dans l'alerte

# Comment l'éviter ?
Pour éviter ce probleme on peut utiliser un système de routes, chaque route sera prédéfinie et sera reliée à un fichier.<br>
Seules les routes prédéfinies seront accessibles.

source : https://owasp.org/www-community/attacks/Path_Traversal