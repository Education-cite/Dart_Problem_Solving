
/*

Problem 50: Filter by Key Pattern

Task: Write a function that takes a Map<String, dynamic> and keeps only those keys containing a specific substring (e.g., "id").

Input: {'user_id': 1, 'name': 2, 'product_id': 3}
Substring: 'id'
Output: {'user_id': 1, 'product_id': 3}

*/

void main(){
  Map<String,dynamic> students =  {'name1':'Enamul', 'id1':1, 'name2':'tusar', 'id2':2, 'name3':'tawhid', 'id3':3};
  String pattern = 'id';
  var result = FilterByKeyPattern( students,pattern);
 // var result = FilterByKeyPattern1( students,pattern);
  print(result);

}

Map<String,dynamic>  FilterByKeyPattern(Map<String,dynamic> input, String pattern){
  Map<String,dynamic>  newMap = {};
  input.forEach((key,value){
    if(key.contains(pattern)){
      newMap[key] = value;
    }
  });

  return newMap;
}

//or

Map<String,dynamic>  FilterByKeyPattern1(Map<String,dynamic> input, String pattern){
 return Map.fromEntries(input.entries.where((data)=>data.key.contains(pattern)));
}