# bmm
bookmark manager

### Install bookmarklet

```javascript
javascript:q=location.href;
if(document.getSelection) {
    d=document.getSelection();
}

else {
    d='';
}

;
p=document.title;
void(open('https://localhost:4568/add?showtags=yes&url=%27+encodeURIComponent(q)+%27&description=%27+encodeURIComponent(d)+%27&title=%27+encodeURIComponent(p),%27Pinboard%27,%27toolbar=no,scrollbars=yes,width=750,height=700%27));
```
#### Minified
```
javascript:q=location.href;if(document.getSelection){d=document.getSelection();}else{d='';};p=document.title;void(open('http://localhost:4568/add?showtags=yes&url=%27+encodeURIComponent(q)+%27&description=%27+encodeURIComponent(d)+%27&title=%27+encodeURIComponent(p),%27Pinboard%27,%27toolbar=no,scrollbars=yes,width=750,height=700%27));
```
