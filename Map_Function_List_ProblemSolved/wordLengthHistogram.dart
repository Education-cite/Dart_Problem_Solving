/*
 **Problem 38: Frequency Histogram from String**

**Task:** Given a string, return a `Map<int, int>` where each key is a word length, and the value is how many words have that length.

*/

void main() {
  String sentence =   "This is a simple test string";
  var result = wordLengthHistogram(sentence);
  print(result);


}

Map<int, int> wordLengthHistogram( String sentence) {
  Map<int, int> newMap = {};
  for(var word in sentence.split(' ')){
    int wordLength = word.length;
    newMap[wordLength] = (newMap[wordLength] ?? 0 ) + 1;
  }
  return newMap;
}

