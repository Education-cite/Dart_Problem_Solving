
/*
Problem 41: Filter Words by Length**

Task:
You will be given a `List<String>` and an integer `minLength`. Your task is to create a new list that contains only those words that are of length `minLength` or greater.

Input:

List<String> words = ['apple', 'bee', 'car', 'elephant', 'do'];
int minLength = 4;

Output:

['apple', 'elephant']

*/

void main(){
  List<String> words = ['apple', 'bee', 'car', 'elephant', 'do'];
  int minLength = 4;
  var result = countWordsByFirstLetter(words,minLength);
  print(result);

}

List<String>  countWordsByFirstLetter(List<String> words,int minLength){
  
  return words.where((word)=>word.length >= minLength).toList();
  
}



