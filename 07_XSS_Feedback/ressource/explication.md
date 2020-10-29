# Explication
Sur la page ***Feedback***  on peut entrer du texte et donc essayer une injection<br>
La faille est bloquée pour ne pas casser l'ISO mais lorsque l'on rentre des termes tels que *script* ou *alert* on obtient le flag, il y a donc bien une faille XXS.<br>

Exemple de commande executable avec cette faille.
```html
<SCRIPT>alert('XSS')</SCRIPT>
```

# Comment l'éviter ?
Pour éviter les failles XSS [OWASP](https://owasp.org/) conseille au minimum de ne jamais entrer du contenu extérieur directement dans du html et d'encoder tout ce qui peut être utilisé pour injecter du code ( &, <, >, ", ', / )<br>
```
- & --> &amp;
- < --> &lt;
- > --> &gt;
- " --> &quot;
- ' --> &#x27;
- / --> &#x2F;
```

# Source
Preventing XSS<br>
source : https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html