/*
Problem 45: Word Position Mapper

Task: Given a string, return a Map<String, int> mapping each word to its index position (based on first occurrence).

Input: "apple banana apple car"

Output: {'apple': 0, 'banana': 1, 'car': 3}

*/



void main() {

  String sentence = 'I Love my country';
  var result = WordPosition(sentence);
  print(result);


}


Map<String,int> WordPosition( String sentence) {
  Map<String,int> wordPositionMap= {};
  List<String> words = sentence.split(' ');
  for(int i=0; i<words.length; i++){
  if(!wordPositionMap.containsKey(words[i])){
   wordPositionMap[words[i]] = i;
  }

  }

  return wordPositionMap;
}





