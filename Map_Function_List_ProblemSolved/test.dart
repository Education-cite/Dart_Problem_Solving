void main(){
  List<int> numbers = [123,567,123,567];
  Map<int,int> countNumber = {};
  Map<int,int> result = countOfNumber(numbers);
print(result);
}

Map<int,int> countOfNumber (List<int> digits){

  Map<int,int> count = {};
  for(var item in digits){
    String numToString = item.toString();
    for(int i=0;i<numToString.length;i++){
      int n = int.parse(numToString[i]);
      count[n] = (count[n] ?? 0)+1;


    }
  }


  return count;

}