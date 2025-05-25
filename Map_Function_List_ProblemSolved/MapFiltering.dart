/*
Problem 5: Map Filtering
Write a function filterMapByValue that removes all entries in a Map where the value is below a certain threshold.
*/

void main() {
  final result = filterMapByValue(studentNumber,number);
  print(result);
}

Map<String, int> studentNumber = {'Enamul': 75, 'Tusar': 55, 'Tawhid': 90};

int number = 60;

Map<String, int> filterMapByValue(Map<String, int> filterByNumber,int number) {
  Map<String, int> newMap = {};

  filterByNumber.forEach((key, value){
    if(value>number){
      newMap[key]=value;
    }else{
      print("No Student Found This Number");
    }
  });

  return newMap;
}
