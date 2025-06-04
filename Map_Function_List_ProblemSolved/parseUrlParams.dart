/*
 Problem 37: URL Parameter Parser

**Task:**
`"a=1&b=2&c=1"` এই ধরনের query string কে `Map<String, String>` এ রূপান্তর করো।

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