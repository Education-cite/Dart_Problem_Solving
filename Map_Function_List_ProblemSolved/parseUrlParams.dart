/*
 Problem 37: URL Parameter Parser

**Task:**
`"a=1&b=2&c=1"` এই ধরনের query string কে `Map<String, String>` এ রূপান্তর করো।

*/

void main() {
 String url =   "a=1&b=2&c=1";
  var result = parseUrlParams(url);
  print(result);


}

Map<String, String> parseUrlParams( String url) {
  Map<String, String> newMap = {};
 for(var query in url.split('&')){
   List<String> queryPart = query.split('=');
   if(queryPart.length == 2){
     newMap[queryPart[0]] = queryPart[1];
   }
 }
  return newMap;
}