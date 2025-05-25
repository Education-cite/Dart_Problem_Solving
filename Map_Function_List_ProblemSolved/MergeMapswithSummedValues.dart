/*
Problem 13: Merge Maps with Summed Values
Given two Map<String, int>. Add their values if they have the same key.

Input: {'a': 2, 'b': 3}, {'a': 5, 'c': 4}
Output: {'a': 7, 'b': 3, 'c': 4}

*/


void main() {
  Map<String,int> student1 = {'Enamul':80,'tusar':90,'nayem':100,'mamun':99,'taslima':85,};
  Map<String,int> student2 = {'Enamul':80,'rofiq':77,'mahabub':55,'niloy':88,'mamun':33,};
  var result = add2Map(student1,student2);
  print(result);

}

Map<String,int> add2Map (Map<String,int> map1 , Map<String,int> map2){
  Map<String,int> newMap = {};

  map1.forEach((key,value){
    newMap[key] = value;
  });

  map2.forEach((key,value){
    if(newMap.containsKey(key)){
      newMap[key] = newMap[key]!+ value;
    }else{
      newMap[key] = value;
    }
  });

  return newMap;
}