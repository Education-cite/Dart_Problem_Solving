
/*
Problem 47: Find Consecutive Repeats

Task: Given a list, return the values that appear consecutively two or more times.

Input: [1, 2, 2, 3, 4, 4, 4, 5]

Output: [2, 4]
*/

void main(){
  List<int> numbers = [1, 2, 2, 3, 4, 4, 4, 5];

  var result = findConsecutiveRepeats(numbers);
  print(result);
}

List<int> findConsecutiveRepeats(List<int> input){
  Set<int> repeatNumber = {};
  for(int i = 1; i<input.length; i++){
    if(input[i] == input[i-1]){
      repeatNumber.add(input[i]);
    }
  }
  return repeatNumber.toList();
}
