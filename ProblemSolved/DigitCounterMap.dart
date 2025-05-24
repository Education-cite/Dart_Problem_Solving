
/*
Problem 24: Digit Counter Map
Task: Given a list of integers, return a Map<int, int> counting how many times each digit (0–9) appears across all numbers.

input : [123, 456, 112]

output :{1: 3, 2: 2, 3: 1, 4: 1, 5: 1, 6: 1}

*/

void main() {
  List<int> digits = [123, 456, 112];
  var result = digitCounter(digits);
  print(result);
}

Map<int, int> digitCounter(List<int> numbers) {

  Map<int, int> countDigit = {};
  for(var digit in numbers){
     String numToString = digit.toString();
     for(int i=0; i<numToString.length;i++){
       int digit = int.parse(numToString[i]);
       countDigit[digit] = (countDigit[digit] ?? 0)+1;
     }
  }

  return countDigit;
}