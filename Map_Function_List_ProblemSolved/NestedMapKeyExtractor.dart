
/*
Problem 48: Nested Map Key Extractor

Task: Given a Map<String, Map<String, int>>, return a Set<String> of all the inner keys.

Input:

{
  "group1": {"a": 1, "b": 2},
  "group2": {"b": 3, "c": 4}
}
Output: {'a', 'b', 'c'}
*/

void main(){
  Map<String,Map<String,int>> nestedMap = {
    'group1':{'a':1,'b':2},
    "group2": {"b": 3, "c": 4}
  };

  var result = extractInnerKeys(nestedMap);
  print(result);
}

Set<String> extractInnerKeys(Map<String,Map<String,int>> nestedMap ){
  Set<String> innerkeys = {};
  for(var innerMap in nestedMap.values){
    innerkeys.addAll(innerMap.keys);
  }
  
  return innerkeys;
}
