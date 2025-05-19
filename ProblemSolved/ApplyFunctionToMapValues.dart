
/*
Problem 8: Apply Function to Map Values
Write a function that takes a Map<String, int> and a function, and returns a new map where the function is applied to each value.

Map<String, int> data = {'a': 2, 'b': 4};
Function f = (x) => x * x;

Output: {'a': 4, 'b': 16}
*/


void main(){
  Map<String,int> studentsNumber1 = {"Enamul":80,"Tawhid":99,"Tusar":100,"Saddam":67};
  int Function(int) data = (x) => x + x;
  var result = scores(studentsNumber1, data);
  print(result);
}

Map<String,int> scores(Map<String,int> input,int Function(int) f){
  Map<String,int> newMap = {};
  for(var entry in input.entries){
    newMap[entry.key] = f(entry.value);
  }
  return newMap;
}
