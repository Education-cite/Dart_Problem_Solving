
/*
Problem 33: Count Total Occurrences in List of Maps**

**Task:** Given a `List<Map<String, int>>`, count the total number of times each key appears (regardless of values).

*/

void main(){
  List<Map<String,int>> students = [
    {'enamul':1,'tusar':2},
    {'tawhid':11,'tusar':12},
    {'enamul':21,'taslima':22},

  ];

  var result = countKeyOccurrences(students);
  print(result);

}

Map<String, int> countKeyOccurrences(List<Map<String,int>> students){
  Map<String, int> keyCount = {};
 for(var student in students){
   for(var key in student.keys){
   keyCount[key] = (keyCount[key] ?? 0) + 1;
   }
 }
  return keyCount;

}



