/*
 **Problem 35: Custom Sort by Key and Value**

**Task:** Given a `Map<String, int>`, return a new map sorted first by values descending, then keys ascending alphabetically.


*/

void main() {
  Map<String,int> fruits =  {'apple': 3, 'banana': 2, 'cherry': 3, 'mango': 1};;
  var result = customSort(fruits);
  print(result);


}

Map<String, int> customSort(Map<String, int> map) {
  var entries = map.entries.toList();
  entries.sort((a, b) {
    
    if (b.value != a.value) {
      return b.value.compareTo(a.value); // value DESC
    } else {
      return a.key.compareTo(b.key); // key ASC
    }
  });

  return Map.fromEntries(entries);
}