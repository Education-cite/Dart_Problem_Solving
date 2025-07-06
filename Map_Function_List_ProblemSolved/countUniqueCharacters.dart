/*
Problem 44: Count Unique Characters

Task: Given a string input, return a Set<String> containing all unique characters (excluding spaces, case-insensitive).

Input: "Hello World"

Output: {'h', 'e', 'l', 'o', 'w', 'r', 'd'}

*/



void main() {

String sentence = 'I Love my country';
sentence.toLowerCase();
  var result = countUnicCharacters(sentence);
  print(result);

  //or
/*
  Set<String> unicCharacters = {};

  for(int i=0; i<sentence.length; i++){
    String char = sentence[i];
    if(char!=' '){
      unicCharacters.add(char);

    }

  }
print(unicCharacters);

 */

}


Set<String> countUnicCharacters( String sentence) {
  sentence = sentence.replaceAll(" ", "");
  return sentence.split('').toSet();
}





