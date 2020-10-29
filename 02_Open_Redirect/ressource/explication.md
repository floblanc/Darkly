# Explication

Dans le footer du site on trouve 3 boutons de redirection pour Facebook, Twiter et Instagram

``` html
<footer id="footer">
<div class="container">
	<ul class="icons">
		<li><a href="http://10.11.200.83/index.php?page=redirect&amp;site=facebook" class="icon fa-facebook"></a></li>
		<li><a href="http://10.11.200.83/index.php?page=redirect&amp;site=twitter" class="icon fa-twitter"></a></li>
		<li><a href="http://10.11.200.83/index.php?page=redirect&amp;site=instagram" class="icon fa-instagram"></a></li>
	</ul>
	<ul class="copyright">
		<a href="http://10.11.200.83/index.php?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c"><li>© BornToSec</li></a>
	</ul>
</div>
</footer>
```
On peut rediriger vers n'importe quel autre site en changeant la valeur de 'site' des redirect.
# Comment l'éviter ?
Ne pas utiliser de redirections, ne pas rediriger hors du site, white list les sites de redirection, hash les sites voulu pour vérifier la validité du lien...

source : https://cheatsheetseries.owasp.org/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.html