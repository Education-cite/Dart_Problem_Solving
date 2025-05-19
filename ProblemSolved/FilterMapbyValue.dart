
/*
Problem 12: Filter Map by Value
Take a Map<String, int> and a threshold as input.
Create a new Map with only the keys whose values are greater than the threshold.

Input: {'a': 5, 'b': 2, 'c': 8}, threshold = 4
Output: {'a': 5, 'c': 8}

*/

void main() {
  Map<String,int> orginalMap = {'Enamul': 10, 'Tusar': 60, 'Tawhid': 70};
  var number = 30;
  Map<String, int> result = greaterMap1(orginalMap,number);
  print(result);
}

Map<String, int> greaterMap1(Map<String,int> input,int number) {
  Map<String, int> newMap = {};

  input.forEach((key,value){
    if(value>number){
      newMap[key]=value;
    }
  });

  return newMap;
}
