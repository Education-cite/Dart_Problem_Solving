
/*

Problem 25: Detect Duplicate Values
Task: Given a Map<String, int>, return a List<String> of keys that share a value with another key.

input : {'a': 1, 'b': 2, 'c': 1, 'd': 3}

output :['a', 'c']
*/

void main(){
 Map<String,int> data = {'a': 1, 'b': 2, 'c': 1, 'd': 3};
  var result = detectDuplicateValues( data);
  // var result = findDuplicateKeys( data);
  print(result);
}

List<String> detectDuplicateValues(Map<String,int> input){
  Map<int,List<String>> newMap = {};
  List<String> newList = [];
  input.forEach((key,value){
  newMap.putIfAbsent(value, ()=>[]);
  newMap[value]!.add(key);
  });

  newMap.forEach((value,keys){
    if(keys.length > 1){
      newList.addAll(keys);
    }
  });


  return newList;
}


// Or

List<String> findDuplicateKeys(Map<String, int> map) {
  Map<int, List<String>> grouped = {};

  for (var entry in map.entries) {
    (grouped[entry.value] ??= []).add(entry.key);
  }

  return grouped.values
      .where((list) => list.length > 1)
      .expand((list) => list)
      .toList();
}
