
/*
Problem 15: Top N Values ​​from Map
Given a Map<String, int> and a number n.
Select the keys according to the largest n values and return them as a Map<String, int>.

Input: {'a': 5, 'b': 1, 'c': 8, 'd': 3}, n = 2
Output: {'c': 8, 'a': 5}

*/

void main() {
  Map<String, int> students = {
    'Enamul': 80,
    'Tusar': 90,
    'Nayem': 100,
    'Mamun': 99,
    'Taslima': 85
  };

  int number = 2;
  var result = topN2(students, number);
  print(result); // Output: {Nayem: 100, Mamun: 99}
}


Map<String, int> topN(Map<String, int> input, int n) {
  List<MapEntry<String, int>> sorted = input.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  Map<String, int> result = {};
  int count = 0;

  for (var entry in sorted) {
    if (count >= n)
    {
      break;
    }else{
      result[entry.key] = entry.value;
      count++;
    }

  }

  return result;
}

//0rr

Map<String, int> topN2(Map<String, int> input, int n) {
  List<MapEntry<String, int>> sorted = input.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  Map<String, int> result = {};
  for (int i = 0; i < n && i < sorted.length; i++) {
    result[sorted[i].key] = sorted[i].value;
  }

  return result;
}
