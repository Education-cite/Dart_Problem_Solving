
/*

Problem 26: Swap Map Keys Based on Function
Task: Given a Map<String, int> and a function (String) => String, return a new map where the keys are transformed using the function, keeping values the same.
Map<String, int> input = {'a': 1, 'b': 2};
Output
{'A': 1, 'B': 2}

*/

void main(){
  Map<String,int> data = {'a':1,'b':2,'c':3};
  String Function(String) toUpper=(k)=>k.toUpperCase();

 // or
 //  String toUpper(String k){
 //    return k.toUpperCase();
 //  }

  var result = swapMapKeys( data,toUpper);
  print(result);
}

Map<String,int> swapMapKeys(Map<String,int> input,String Function(String) transformer){
  Map<String,int> newMap = {};
input.forEach((key,value){
  String newKey = transformer(key);
  newMap[newKey]=value;
});


  return newMap;
}



