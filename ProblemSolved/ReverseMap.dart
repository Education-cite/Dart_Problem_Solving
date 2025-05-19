/*
Problem 2: Reverse Map
Write a function reverseMap that takes a Map<String, String> and returns a new map where keys and values are swapped.
*/

void main() {

  Map<String, String> capitals = {'Bangladesh': 'Dhaka', 'India': 'Delhi', 'Japan': 'Tokyo'};

  Map<String,String> newMap = reverseMap(capitals);
  print(newMap);
}

Map<String,String> reverseMap (Map<String,String> inputMap){

  Map<String,String> reverseMap2 = {};

  inputMap.forEach((key,value){
    reverseMap2[value] = key;
  });
  return reverseMap2;

}