
/*
Problem 14: Word Frequency Counter
Given a String as input. Count the number of times each word occurs and return a Map<String, int>.
(Assuming it is separated by spaces)

Input: "dart is fun and dart is powerful"
Output: {'dart': 2, 'is': 2, 'fun': 1, 'and': 1, 'powerful': 1}

*/

void main() {
  String sentence = "dart is fun and dart is powerful";
  var result = wordCount(sentence);
//var result = countWords(sentence);
  print(result);

}

Map<String,int> wordCount (String input){
  Map<String,int> newMap = {};

  List<String> text = input.toLowerCase().split(' ');
  for(var word in text){
    if(newMap.containsKey(word)){
      newMap[word] = newMap[word]! + 1;
    }else{
      newMap[word] = 1;
    }
  }

  return newMap;
}


//orr

Map<String, int> countWords(String text) =>
    text
        .toLowerCase()
        .split(' ')
        .fold(<String, int>{}, (acc, word) {
      acc.update(word, (v) => v + 1, ifAbsent: () => 1);
      return acc;
    });
