/*
Problem 18: Check Map Equality
🔷 Problem:
Given two Map<String, int>.
Write a function that returns true if the keys and values ​​of the two maps are exactly the same (order is not important). Otherwise, false.

input : {'a': 1, 'b': 2}
{'b': 2, 'a': 1}

output: true
*/

void main() {
  Map<String,int> map1 =  {'a': 1, 'b': 2};
  Map<String,int> map2 = {'b': 2, 'a': 1};
  var result = checkMapEquality(map1,map2);
  print(result);


}


bool checkMapEquality(Map<String,int> map1, Map<String,int> map2 ) {

  if(map1.length!=map2.length){
    return false;
  }
  for(var key in map1.keys){
    if(!map2.containsKey(key) || map1[key]!=map2[key]){
      return false;
    }
  }

  return true;
}