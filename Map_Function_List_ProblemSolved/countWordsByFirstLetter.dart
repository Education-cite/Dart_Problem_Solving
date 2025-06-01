
/*
Problem 32: Count Words by First Letter**

Task**:
You will be given a List<String> containing some words. Your task is to return a Map\<String, int>, where each key is the first letter, and the value is the number of words that start with that letter.
Input:

List<String> words = ['apple', 'banana', 'apricot', 'blueberry', 'avocado'];
 Expected Output:

{
  'a': 3,
  'b': 2
}

*/

void main(){
  List<String> words = ['Enamul','tusar','tawhid'];
  var result = countWordsByFirstLetter(words);
  print(result);

}

Map<String,int>  countWordsByFirstLetter(List<String> words){
  Map<String,int> newMap = {};
  for(var word in words){
    String firstLetter = word[0].toUpperCase();
    newMap[firstLetter] = (newMap[firstLetter] ?? 0) +1;
  }

  return newMap;

}



