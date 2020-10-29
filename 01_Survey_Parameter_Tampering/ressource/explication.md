# Explication

En inspectant la page *Survey* on trouve un formulaire qui permet de voter avec la valeur des votes en brut.

```html
<select name="valeur" onchange="javascript:this.form.submit();">
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8">8</option>
	<option value="9">9</option>
	<option value="10">10</option>
</select>
```

La premiere ligne nous indique aussi que la valeur est envoyée dès sa selection, il n'y a donc pas de vérification.<br>
Il nous est donc possible de changer la valeur d'envoi.

# Comment l'éviter ?

Il suffit de vérifier en back la valeur reçue, et dans notre cas ne prendre que les valeurs inférieures a 10.

source : https://owasp.org/www-community/attacks/Web_Parameter_Tampering