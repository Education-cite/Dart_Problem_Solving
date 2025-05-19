
/*
Problem 17: Group Words by Length
🔷 Problem:
Given a List<String>.
You will return a Map<int, List<String>> where the key is the length of the word, and the value is the list of all words of that length.

input : ['cat', 'dog', 'fish', 'goat', 'hi']

output: {
  3: ['cat', 'dog'],
  4: ['fish', 'goat'],
  2: ['hi']
}


*/

void main() {
  List<String> names =  ['cat', 'dog', 'fish', 'goat', 'hi'];

  var result = countNameLenth(names);
  print(result);


}


Map<int, List<String>> countNameLenth(List<String> input, ) {
  Map<int, List<String>> newMap = {};
  for(var word in input){
    int lenth = word.length;
    if(newMap.containsKey(lenth)){
      newMap[lenth]!.add(word);
    }else{
      newMap[lenth]=[word];
    }
  }

  return newMap;

}

