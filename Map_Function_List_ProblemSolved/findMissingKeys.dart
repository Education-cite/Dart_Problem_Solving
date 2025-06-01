
/*

Problem 31: Find Missing Keys
Task**:
You will be given two Maps\<String, int>. The first Map will have some keys, the second Map will also have some keys. Your task is to find a List<String> that is in the first Map but not in the second.

**Input**:

Map<String, int> map1 = {'a': 1, 'b': 2, 'c': 3};
Map<String, int> map2 = {'b': 2, 'd': 4};

 Output:
['a', 'c']

*/

void main(){
 Map<String,int> map1 = {'Enamul':99,'tusar':50,'tawhid':100};
 Map<String,int> map2 = {'Saddam':99,'tusar':50,'tawhid':100};

  var result = findMissingKeys( map1,map2);
  //var result = groupAnagrams( words);
  print(result);

}

List<String>  findMissingKeys(Map<String,int> map1, Map<String,int> map2){
return map1.keys.where((key)=>!map2.containsKey(key)).toList();
}



