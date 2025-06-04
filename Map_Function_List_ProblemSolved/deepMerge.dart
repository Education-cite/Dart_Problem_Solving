/*
 **Problem 40: Merge List of Maps with Summed Values (Deep Merge)**

**Task:** Given a `List<Map<String, int>>`, combine all maps into one where values are added per key.
*/

void main() {
  List<Map<String,int>> maps =  [
    {'a': 1, 'b': 2},
    {'b': 3, 'c': 4},
    {'a': 5, 'c': 1}
  ];

  var result = deepMerge(maps);
  print(result);

}

Map<String,int> deepMerge( List<Map<String,int>>  maps) {
  Map<String,int> newMap = {};
 for(var map in maps){
   map.forEach((key,value){
     newMap[key] = (newMap[key] ?? 0) + value;
   });
 }
  return newMap;
}

