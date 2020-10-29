# Explication

En inspectant la page *Recover* (en cliquant sur *SIGN IN* puis *I forgot my password* depuis la page d'accueil). On trouve, en inspectant le bouton Submit, un input caché.

```html
<form action="#" method="POST">
	<input type="hidden" name="mail" value="webmaster@borntosec.com" maxlength="15">
	<input type="submit" name="Submit" value="Submit">
</form>
```

On voit ici qu'un mail est enregistré dans la page, il n'y a donc pas de vérification.<br>
Il nous est donc possible de changer la valeur de ce mail pour rediriger la récupération du mot de passe.

# Comment l'éviter ?

Il suffit soit de stocker cette valeur dans le back, soit de demander un mail à l'utilisateur qui sera vérifié en back pour lui renvoyer un mot de passe correspondant à son compte ou encore simplement vérifier immédiatement la validité du mail encore une fois avec le back.