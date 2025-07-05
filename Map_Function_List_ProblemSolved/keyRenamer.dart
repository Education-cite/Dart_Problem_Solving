/*
Problem 43: Key Renamer
Task: Given a Map<String, int> and a function String rename(String oldKey), return a new map where the keys are renamed using the rename function and the values remain the same.
*/

void main(){
  Map<String,int> studentsNumber = {
    'enamul':80,
    'taslima':70,
    'tusar':90,
    'tawhid':95,
    'anisa':99,
  };


  Map<String,dynamic> studentNames = {
    'enamul':'saddam',
    'taslima':'tanisa',

  };

  // var result = renameKey(studentsNumber,studentNames);
  var result = renameKey2(studentsNumber,studentNames);
  print(result);

}

Map<String,dynamic> renameKey(Map<String,int> input, Map<String,dynamic> studentNames){
  Map<String,dynamic> newMap = {};
input.forEach((key,value){
  String newKey = studentNames[key] ?? key;
  newMap[newKey] = value;
});

  return newMap;
}


// orr

Map<String,dynamic> renameKey2(Map<String,int> input, Map<String,dynamic> studentNames){
 return Map.fromEntries(
   input.entries.map((entry){
     String newKey = studentNames[entry.key] ?? entry.key;
     return MapEntry(newKey, entry.value);
   })
 );
}