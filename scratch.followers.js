/*
 * This is a JavaScript Scratchpad.
 *
 * Enter some JavaScript, then Right Click or choose from the Execute Menu:
 * 1. Run to evaluate the selected text (Ctrl+R),
 * 2. Inspect to bring up an Object Inspector on the result (Ctrl+I), or,
 * 3. Display to insert the result in a comment after the selection. (Ctrl+L)
 */

var all={};
var dirty=true;

function collect() {
  dirty=false;
  var iter = document.evaluate("//a[@href]",document,null,XPathResult.UNORDERED_NODE_ITERATOR_TYPE, null);
  for(;;) {
    var a = iter.iterateNext();
    if(a==null) break;
    var href= a.getAttribute("href");
    
    if(href.indexOf("/p/")!=-1) continue;
    if(href.indexOf("/explore/")!=-1) continue;
    if(href.indexOf("/legal/")!=-1) continue;
     if(href.indexOf("/directory/")!=-1) continue;
     if(href.indexOf("/accounts/")!=-1) continue;
     if(href.indexOf("/yokofakun/")!=-1) continue;
    if(!href.startsWith("/")) continue;
    if(!href.endsWith("/")) continue;
    
    href = href.substr(1,href.length-2);
    if(href in all) continue;
    all[href]=all.length;
    dirty=true;
    }
if(dirty) console.log(""+all.length+" "+Object.entries(all).map(e=>e[0]).join(" "));
}



setInterval(collect, 2000);
