/*
Problem 46: Group Numbers by Parity and Range

Task: Given a List<int>, create a map where keys are "even" and "odd", and the values are maps grouping numbers by ranges of 10 (e.g., 0–9, 10–19, etc.) with counts.

Input: [3, 4, 12, 17, 22, 25]

Output:

{
  "even": {"0–9": 1, "10–19": 1, "20–29": 1},
  "odd": {"0–9": 1, "10–19": 1, "20–29": 1}
}

*/



void main() {
  List<int> numbers = [3, 4, 12, 17, 22, 25];
  print(groupByParityAndRange(numbers));
}

Map<String, Map<String, int>> groupByParityAndRange(List<int> numbers) {
  Map<String, Map<String, int>> result = {
    'even': {},
    'odd': {}
  };

  for (int number in numbers) {
    String parity = number % 2 == 0 ? 'even' : 'odd';

    int start = (number ~/ 10) * 10;
    int end = start + 9;
    String rangeKey = '$start–$end';

    result[parity]![rangeKey] = (result[parity]![rangeKey] ?? 0) + 1;
  }

  return result;
}




