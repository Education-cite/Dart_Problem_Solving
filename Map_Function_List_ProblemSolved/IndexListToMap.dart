
/*

Problem 28: Index List to Map
Task: Given a List<String>, convert it to a Map<int, String> where the key is the index.

input : ['apple', 'banana']

output :{0: 'apple', 1: 'banana'}

*/

void main(){
  List<String> fruits = ['Apple','Mango','Banana'];
  var result = IndexListToMap( fruits);
//  var result = IndexListToMap2( fruits);
  print(result);

}

Map<int,String> IndexListToMap(List<String> fruits){
  Map<int,String> newMap = {};
  for(var i = 0; i<fruits.length;i++) {
    newMap[i]=fruits[i];
  };

  return newMap;
}


//or

Map<int,String> IndexListToMap2(List<String> fruits){
  return fruits.asMap();
}
