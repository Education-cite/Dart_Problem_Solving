/*
 **Problem 39: Compact Map Cleaner**

**Task:** Write a function that removes all entries from a `Map<String, dynamic>` where the value is `null`, empty string `''`, or empty list `[]`.

*/

void main() {
  Map<String,dynamic> introduction = {'name': 'John',
    'email': '',
    'age': null,
    'tags': [],
    'country': 'USA'
  };

  var result = cleanMap(introduction);
//  var result = cleanMap2(introduction);
  print(result);

}

Map<String,dynamic> cleanMap( Map<String,dynamic> introduction) {
  Map<String,dynamic> newMap = {};
  for(var entry in introduction.entries){
    var key = entry.key;
    var value = entry.value;

 if(value != null && value != "" && !(value is List && value.isEmpty)){
   newMap[key] = value;
 }

  }
  return newMap;
}

//       Or


Map<String, dynamic> cleanMap2(Map<String, dynamic> input) {
  return Map.fromEntries(
      input.entries.where((e) =>
      e.value != null && e.value != '' && !(e.value is List && e.value.isEmpty))
  );
}