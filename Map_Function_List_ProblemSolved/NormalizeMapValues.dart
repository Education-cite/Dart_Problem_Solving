
/*
Problem 49: Normalize Map Values

**Task:** একটি `Map<String, int>` দেওয়া থাকবে। প্রত্যেক মানকে মোট যোগফল দিয়ে ভাগ করে 0 থেকে 1 এর মধ্যে আনো (percentage নয়)। মান গুলো `double` হবে।

**Input:** `{'a': 2, 'b': 3}`
**Output:** `{'a': 0.4, 'b': 0.6}`
*/

void main(){
  Map<String,int> marks = {'enamul': 2, 'tusar': 3};


  var result = normalizeValues(marks);
  print(result);
}

Map<String,double> normalizeValues(Map<String,int> marks ){

  int total = 0;
  for (var val in marks.values) {
    total += val;
  }
//or
 // int total = marks.values.fold(0, (sum,val)=>sum+val);
  Map<String,double> result = {};
  marks.forEach((key,value){
    result[key] = value/total;
  });


  return result;
}
