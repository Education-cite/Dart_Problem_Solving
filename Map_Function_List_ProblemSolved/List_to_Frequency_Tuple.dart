
/*

Problem 51: List to Frequency Tuple

Task: Given a List<String>, return a List<List> where each sublist is [word, frequency].

Input: ['apple', 'banana', 'apple', 'banana', 'banana']

Output: [['apple', 2], ['banana', 3]]

*/

void main(){
  List<String> fruits =  ['apple', 'banana', 'apple', 'banana', 'banana'];
  var result = ListToFrequencyTuple( fruits);
  print(result);

}

List<List>  ListToFrequencyTuple(List<String> fruits){

  Map<String,int> freqMap = {};
  for(var fruit in fruits){
    freqMap[fruit] = (freqMap[fruit] ?? 0 ) + 1;
  }

  List<List>  newList = [];
  freqMap.forEach((key,value){
    newList.add([key,value]);
  });

  return newList;
}
