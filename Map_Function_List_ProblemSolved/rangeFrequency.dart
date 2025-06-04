/*
*Problem 36: Range Frequency Counter**

**Task:** Given a list of integers, return a `Map<String, int>` where keys are ranges like `"0–9"`, `"10–19"`, etc., and values are counts of how many numbers fall into each range.

*/

void main() {
  List<int> numbers =  [5, 12, 17, 22, 35, 8, 15];
  var result = rangeFrequency(numbers);
  print(result);


}

Map<String, int> rangeFrequency( List<int> numbers) {
  Map<String, int> newMap = {};
  for (var number in numbers) {
    int start = (number ~/ 10) * 10;
    int end = start + 9;
   String keyRange = "$start-$end";
   newMap[keyRange] = (newMap[keyRange] ?? 0 )+1;
  }
  return newMap;
}