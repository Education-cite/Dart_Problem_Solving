/*
Problem 42: Flatten List of Lists
Task: Given a List<List<int>>, convert it into a single List<int> containing all the elements.
Input:
[[1, 2], [3, 4], [5]]
Output:
[1, 2, 3, 4, 5]

*/

void main(){
  List<List<int>> nestedList = [[1, 2], [3, 4], [5]];
  var result = flatList(nestedList);
  print(result);

  
  //Or use expand method

/*
  List<int> flatlist = nestedList.expand((list)=>list).toList();
  print(flatlist);
*/

}

List<int> flatList(List<List<int>> nestedList){
  List<int> result = [];
  for(List<int> list in nestedList){
    for(int value in list){
      result.add(value);
    }
  }
  return result;
}



