/*
Problem 16: Remove Keys with Even Values
🔷 Problem:
You are given a Map<String, int>.
From that map, remove the keys whose values are even numbers ( 2, 4, 6) and return the rest.

input:{'a': 2, 'b': 3, 'c': 4, 'd': 5}

output:{'b': 3, 'd': 5}

*/

void main() {
  Map<String, int> students = {
    'Enamul': 80,
    'Tusar': 90,
    'Nayem': 100,
    'Mamun': 99,
    'Taslima': 85
  };

  var result = topN(students);
  print(result);


}


Map<String, int> topN(Map<String, int> input, ) {
  Map<String, int> newMap = {};

  input.forEach((key,value){
    if(value%2!=0) {
      newMap[key]=value;
    }

  });

  return newMap;

}
