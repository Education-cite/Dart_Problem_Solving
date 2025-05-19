
/*

Problem 6: Merge Two Maps
Write a function that takes two Map<String, int> and returns a merged map. If the same key exists in both, add the values.

*/

// this problem is solution in 3 system

void main(){
  Map<String,int> studentsNumber1 = {"Enamul":80,"Tawhid":99,"Tusar":100,"Saddam":67};
  Map<String,int> studentsNumber2 = {"Enamul":90,"Nayem":99,"Taslima":100,"Sowrob":67};
  var result1 = mergeMap1(studentsNumber1,studentsNumber2);
  var result2 = mergeMap2(studentsNumber1,studentsNumber2);
  var result3 = mergeMap3(studentsNumber1,studentsNumber2);
  print(result1);
  print(result2);
  print(result3);
}


Map<String, int> mergeMap1(Map<String, int> map1, Map<String, int> map2) {

  Map<String, int> result = Map.from(map1);

  map2.forEach((key, value) {
    result.update(key, (existing) => existing + value, ifAbsent: () => value);
  });

  return result;
}


Map<String,int> mergeMap2 (Map<String,int> map1,Map<String,int> map2){
  Map<String,int> result = {};
  for(var r in map1.entries){
    result[r.key]=r.value;
  }

  for(var r in map2.entries){
    result[r.key] = (result[r.key] ?? 0) + r.value;
  }

  return result;

}



Map<String, int> mergeMap3(Map<String, int> map1, Map<String, int> map2) {
  Map<String,int> result = {...map1};
  map2.forEach((key,value){
    result[key] = (result[key] ??0 )+value;
  });

  return result;
}
