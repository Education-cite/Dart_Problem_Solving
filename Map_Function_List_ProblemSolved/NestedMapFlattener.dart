/*
Problem 21: Nested Map Flattener
Task: Write a function that takes a Map<String, Map<String, int>> and flattens it into a single Map<String, int>, combining keys as "outer.inner".

input : {
  'math': {'a': 80, 'b': 90},
  'science': {'a': 85, 'c': 75}
}

output : {
  'math.a': 80,
  'math.b': 90,
  'science.a': 85,
  'science.c': 75
}

*/

void main() {
  Map <String,Map<String, int>> data = {
    'math': {'a': 80, 'b': 90},
    'science': {'a': 85, 'c': 75}
  };

  var result = addedOuterInner(data);
  print(result);
}

Map<String, int> addedOuterInner(Map <String,Map<String, int>> map1) {
  Map<String, int> newMap = {};
  map1.forEach((outerKey,innerValue){
    innerValue.forEach((innerKey,innerValue){
      newMap['$outerKey.$innerKey']=innerValue;
    });
  });

  return newMap;
}