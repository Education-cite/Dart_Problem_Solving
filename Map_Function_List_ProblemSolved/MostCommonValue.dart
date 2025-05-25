/*
Problem 22: Most Common Value
Task: Given a Map<String, int>, return the value that appears most frequently.

input :{'a': 1, 'b': 2, 'c': 1, 'd': 3}
output : 1

*/

void main() {
  Map<String, int> data = {'a': 1, 'b': 2, 'c': 1, 'd': 3};

  var result = mostCommonValue(data);
  print(result);
}

int mostCommonValue(Map<String, int> map1) {
  Map<int,int> countValue = {};
  map1.forEach((key,value) {
    countValue[value]=(countValue[value] ?? 0) + 1;
  });
  int mostFrequentValue = countValue.keys.first;
  int maxCount = countValue[mostFrequentValue]!;
  countValue.forEach((key,count){
    if(count>maxCount){
      maxCount=count;
      mostFrequentValue=key;
    }
  });


  return mostFrequentValue;
}
