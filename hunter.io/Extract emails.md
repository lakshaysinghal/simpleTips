## Hunter.io

Simple approach to avoid clicking "Show more" button to extract emails from hunter.io list of results
 
- Login to hunter.io website and search for the target company.
- Navigate to "Inspect Element" and click on "Console".
- Paste the below code and hit Enter

```javascript
setInterval(function(){ $('.show-more.btn-white').click(); },500);
```
- Wait till the web page is fully loaded. This will take some time based on number of results.
- Once the page is fully loaded, paste the below code and hit Enter.

```javascript
var a = $('.email')
var b =[];
for(var i=0;i<a.length;i++){
	b.push($(a[i]).text());
}
copy(b)
```

- Open notepad and do "ctrl+v" and you have all the email ids.
