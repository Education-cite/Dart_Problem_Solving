/*
Problem 1: Frequency Counter
Write a function countFrequencies that takes a list of strings and returns a Map showing how many times each word appears.
*/

void main() {


  List<String> words = ['apple', 'banana', 'apple', 'orange', 'banana', 'apple'];

  var result = returnMap(words);
  print(result);
}

Map<String,int> returnMap (List<String> list){

  Map<String,int> createMap  = {};

  for(var list1 in list){
    if(createMap.containsKey(list1)){
      createMap[list1] = createMap[list1]!+1;
    }else{
      createMap[list1] = 1;
    }
  }

  return createMap;
}