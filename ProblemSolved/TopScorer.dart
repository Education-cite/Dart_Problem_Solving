

/*
 Problem 7: Top Scorer
Given a Map<String, int> of student names and marks, write a function to return the name(s) of the highest scorer(s).

{'Arafat': 90, 'Mehedi': 85, 'Tusar': 90}
→ Output: ['Arafat', 'Tusar']
*/

// this problem is solution in 2 system

void main(){
  Map<String,int> studentsNumber1 = {"Enamul":80,"Tawhid":99,"Tusar":100,"Saddam":67};

  var result1 = topScore1(studentsNumber1);
  var result2 = topScore2(studentsNumber1);
  print(result1);
  print(result2);

}


List<String> topScore1(Map<String,int> students){

  int highestNumber = students.values.reduce((a,b)=> a>b ? a:b );
  List<String> getHighestNumberStudents = students.entries.where((entry)=>entry.value==highestNumber).map((e)=>e.key).toList();

  return getHighestNumberStudents;

}

//Orr


List<String> topScore2(Map<String, int> scores) {
  int highest = 0;
  List<String> result = [];

  // সর্বোচ্চ নাম্বার বের করি
  scores.forEach((name, score) {
    if (score > highest) {
      highest = score;
    }
  });

  scores.forEach((name,value){
    if(value==highest){
      result.add(name);
    }
  });

  return result;
}