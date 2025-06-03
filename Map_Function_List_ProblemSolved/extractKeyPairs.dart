/*
 **Problem 34: Extract Key Pairs Matching Condition**

**Task:** From a `Map<String, int>`, return all pairs of keys where the values differ by exactly 1.

*/

void main() {
  Map<String,int> map1 =  {'a': 3, 'b': 4, 'c': 6, 'd': 5};
  var result = extractKeyPairs(map1);
  print(result);


}


List<List<String>> extractKeyPairs(Map<String,int> map1) {
  List<List<String>> result = [];
  List<String> keys = map1.keys.toList();
  for(var i=0; i<keys.length; i++){
    for(var j=i+1; j<keys.length; j++){
      if((map1[keys[i]]! - map1[keys[j]]!).abs()==1){
       result.add([keys[i],keys[j]]);
      }
    }
  }


  return result;
}