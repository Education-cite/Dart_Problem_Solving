
/*
Problem 23: Word Synonym Expander
Task: Given a list of words and a Map<String, List<String>> of synonyms, return a new list where each word is replaced by its synonyms (if available).

input : words = ['happy', 'sad']
       synonyms = {'happy': ['joyful', 'cheerful'], 'sad': ['unhappy']}

output : ['joyful', 'cheerful', 'unhappy']

*/

void main() {
  List words = ['happy', 'sad'];
  Map<String, List<String>> data = {'happy': ['joyful', 'cheerful'], 'sad': ['unhappy']};

  var result = synonymsValue(words,data);
  print(result);
}

List<String> synonymsValue(List words, Map<String, List<String>> map1) {

  List<String> synonyms = [];
  for(var word in words){
    if(map1.containsKey(word)){
      synonyms.addAll(map1[word]!);
    }
  }

  return synonyms;
}