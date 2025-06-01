
/*

Problem 30: Anagram Grouping
Task: Given a list of words, group them by anagram.

input : ['listen', 'silent', 'enlist', 'rat', 'tar', 'art']

output :{
  'eilnst': ['listen', 'silent', 'enlist'],
  'art': ['rat', 'tar', 'art']
}


*/

void main(){
 List<String> words =  ['listen', 'silent', 'enlist', 'rat', 'tar', 'art'];

  var result = anagramGrouping( words);
  //var result = groupAnagrams( words);
  print(result);

}

Map<String,List<String>>  anagramGrouping(List<String> words ){
  Map<String,List<String>>  anagramMap = {};
 for(var word in words){
   String sorted = (word.split('')..sort()).join();

   if(!anagramMap.containsKey(sorted)){
     anagramMap[sorted] = [];
   }
   anagramMap[sorted]!.add(word);

 }

  return anagramMap;
}


//0r

Map<String, List<String>> groupAnagrams(List<String> words) {
  return words.fold({}, (Map<String, List<String>> acc, word) {
    String sorted = (word.split('')..sort()).join();
    acc.putIfAbsent(sorted, () => []);
    acc[sorted]!.add(word);
    return acc;
  });
}
