
/*
 Problem 9: Count Letters
Write a function that takes a String and returns a Map<String, int> where each letter (ignoring space and case) is counted.

Input: "Hello World"
Output: {'h':1, 'e':1, 'l':3, 'o':2, 'w':1, 'r':1, 'd':1}

*/


void main(){
  String text = "My Name is Enamul";
  var result = letterCount(text);
  print(result);
}

Map<String,int> letterCount(String name){
  Map<String,int> letterCount = {};
  String lowerCase = name.toLowerCase();
  for(int i=0; i<lowerCase.length; i++){
    String char = lowerCase[i];
    if(char!=' '){
      if(letterCount.containsKey(char)){
        letterCount[char] = letterCount[char]! + 1;
      }else{
        letterCount[char] =  1;
      }
    }
  }


  return letterCount;
}