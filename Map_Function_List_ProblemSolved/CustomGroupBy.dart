
/*
Problem 10: Custom Group By
Write a generic function groupBy<T, K> that takes a List<T> and a function that returns a key K for each element. Return a Map<K, List<T>>.

List<String> fruits = ['apple', 'banana', 'apricot', 'blueberry'];
groupBy(fruits, (fruit) => fruit[0]);

→ Output: {
  'a': ['apple', 'apricot'],
  'b': ['banana', 'blueberry']
}

*/


void main() {
  List<String> fruits = ['apple', 'banana', 'apricot', 'blueberry'];

  Map<String, List<String>> result = groupBy(fruits, (fruit) => fruit[0]);

  print(result);
}

Map<String, List<String>> groupBy(List<String> items, String Function(String) keySelector) {
  Map<String, List<String>> grouped = {};

  for (var item in items) {
    String key = keySelector(item);
    if (grouped.containsKey(key)) {
      grouped[key]!.add(item);
    } else {
      grouped[key] = [item];
    }
  }

  return grouped;
}
