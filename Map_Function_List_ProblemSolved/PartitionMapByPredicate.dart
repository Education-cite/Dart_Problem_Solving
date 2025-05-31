
/*

Problem 29: Partition Map by Predicate
Task: Write a function that splits a Map<String, int> into two maps based on a predicate (e.g., value is even or odd).

output : {
  'true': {... even values ...},
  'false': {... odd values ...}
}


*/

void main(){
  Map<String,int> numbers = {
    'a': 1,
    'b': 2,
    'c': 3,
    'd': 4
  };

  var result = PartitionMapByPredicate( numbers);
  print(result);

}

Map<String, Map<String, int>>  PartitionMapByPredicate(Map<String,int> numbers){
  Map<String,int>  evenMap = {};
  Map<String,int>  oddMap = {};

  numbers.forEach((key,value){
    if(value%2==0){
      evenMap[key]=value;
    }else{
      oddMap[key]=value;
    }
  });

  return {
    'Even': evenMap,
    'Odd': oddMap,
  };
}



