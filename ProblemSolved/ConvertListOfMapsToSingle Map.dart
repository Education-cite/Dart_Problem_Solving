
/*
Problem 19: Convert List of Maps to Single Map
🔷 Problem:
You are given a List<Map<String, int>>.
You will return a Map<String, int> where multiple maps will be joined if their values ​​have the same key.

input : [
  {'a': 1, 'b': 2},
  {'a': 3, 'c': 4}
]

output: {'a': 4, 'b': 2, 'c': 4}
*/

void main() {
  List<Map<String, int>> listOfMap =  [
    {'a': 1, 'b': 2},
    {'a': 3, 'c': 4}
  ];

  var result = mergeListOfMaps(listOfMap);
  print(result);

}


Map<String, int> mergeListOfMaps(List<Map<String, int>> mapList ) {

  Map<String, int> newMap = {};
  for(var map in mapList){
    for(var entry in map.entries){
      if(newMap.containsKey(entry.key)){
        newMap[entry.key] = newMap[entry.key]! + entry.value;
      }else{
        newMap[entry.key] = entry.value;
      }
    }
  }

  return newMap;
}