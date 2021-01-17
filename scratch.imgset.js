function collect() {
  dirty=false;
  var iter = document.evaluate("//img[@srcset and @sizes]",document,null,XPathResult.UNORDERED_NODE_ITERATOR_TYPE, null);
  for(;;) {
    var a = iter.iterateNext();
    if(a==null) break;
    var att = a.getAttribute("srcset");
    if(att==null) continue;
    att = a.getAttribute("srcset");
    if(att==null) continue;
    alert(att.split(/[, ]+/)[0]);
    break;
    }
};
collect();
