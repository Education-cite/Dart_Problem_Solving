
/*

Problem 25: Detect Duplicate Values
Task: Given a Map<String, int>, return a List<String> of keys that share a value with another key.

input : {'a': 1, 'b': 2, 'c': 1, 'd': 3}

output :['a', 'c']
*/

void main(){
 Map<String,int> data = {'a': 1, 'b': 2, 'c': 1, 'd': 3};
  var result = detectDuplicateValues( data);
  print(result);
}

List<String> detectDuplicateValues(Map<String,int> input){
  List<String> newList = [];
  input.forEach((key,value){
    
  });


  return newList;
}
