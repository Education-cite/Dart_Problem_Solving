
/*
Problem 11: Invert a Map
Given a Map<String, int> and create a new Map<int, List<String>> where the keys will be grouped according to value.

Input: {'a': 1, 'b': 2, 'c': 1}
Output: {1: ['a', 'c'], 2: ['b']}

*/

void main() {
  Map<String,int> orginalMap = {'Enamul': 1, 'Tusar': 2, 'Tawhid': 1};
  Map<int, List<String>> result = invertMap1(orginalMap);
  print(result);
}

Map<int, List<String>> invertMap1(Map<String,int> input) {
  Map<int, List<String>> invertMap = {};

  input.forEach((key,value){
    if(invertMap.containsKey(value)){
      invertMap[value]!.add(key);
    }else{
      invertMap[value] = [key];
    }
  });

  return invertMap;
}
