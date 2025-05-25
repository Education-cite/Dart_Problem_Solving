/*
Problem 20: Sort Map by Values
🔷 Problem:
You are given a Map<String, int>.
You will return a new Map where the key-values are sorted by value from largest to smallest.

input : {'a': 10, 'b': 5, 'c': 20}

output: {'c': 20, 'a': 10, 'b': 5}
*/

void main() {
  Map<String, int> data =  {'a': 10, 'b': 5, 'c': 20};

  var result = sortedMap (data);
  print(result);

}


Map<String, int> sortedMap (Map<String, int> map1 ) {

  Map<String, int> newMap = {};
  List<MapEntry<String, int>> mapToList = map1.entries.toList();
  mapToList.sort((a,b)=>b.value.compareTo(a.value));
  for(var entry in mapToList){
    newMap[entry.key] = entry.value;
  }

  return newMap;
}
