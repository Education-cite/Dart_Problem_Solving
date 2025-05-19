Problem 1: Frequency Counter
Write a function countFrequencies that takes a list of strings and returns a Map showing how many times each word appears.

void main() {
  
  
  List<String> words = ['apple', 'banana', 'apple', 'orange', 'banana', 'apple'];
  
 var result = returnMap(words);
  print(result);
}

Map<String,int> returnMap (List<String> list){
  
  Map<String,int> createMap  = {};
  
for(var list1 in list){
    if(createMap.containsKey(list1)){
    createMap[list1] = createMap[list1]!+1;
  }else{
       createMap[list1] = 1;
    }
}
  
  return createMap;
}


-------------------------

Problem 2: Reverse Map
Write a function reverseMap that takes a Map<String, String> and returns a new map where keys and values are swapped.


void main() {
  
 Map<String, String> capitals = {'Bangladesh': 'Dhaka', 'India': 'Delhi', 'Japan': 'Tokyo'};

  Map<String,String> newMap = reverseMap(capitals);
  print(newMap);
}

Map<String,String> reverseMap (Map<String,String> inputMap){
  
  Map<String,String> reverseMap2 = {};
  
inputMap.forEach((key,value){
  reverseMap2[value] = key;
});
  return reverseMap2;
  
}

------------------------------------

🧩 Problem 3: Grouping by Property
Given a list of students with their department, write a function groupByDepartment that groups them by department in a Map.

void main() {
  List<Map<String, String>> students = [
    {'name': 'Alice', 'dept': 'CSE'},
    {'name': 'Bob', 'dept': 'EEE'},
    {'name': 'Charlie', 'dept': 'CSE'},
  ];

  var result = groupByDepartment(students);
  print(result);
}

Map<String, List<String>> groupByDepartment(
  List<Map<String, String>> inputStudents,
) {
  Map<String, List<String>> groupByDepartments = {};

  for (var student in inputStudents) {
    var name = student['name']!;
    var dept = student['dept']!;

    if (groupByDepartments.containsKey(dept)) {
      groupByDepartments[dept]!.add(name);
    } else {
      groupByDepartments[dept] = [name];
    }
  }
  return groupByDepartments;
}


--------------------------------------------

Problem 4: Function Composition
Write a higher-order function compose that takes two functions f and g, and returns a new function that applies f(g(x)).


void main() {
  final composed = compose(add2, multiply3);
  print(composed(4)); // Output: 14 → because add2(multiply3(4)) = add2(12) = 14
}

int add2(int x) => x + 2;
int multiply3(int x) => x * 3;

Function compose(Function f, Function g) {
  return (x) => f(g(x));
}

--------------------------------------

Problem 5: Map Filtering
Write a function filterMapByValue that removes all entries in a Map where the value is below a certain threshold.


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

---------------------------------------------

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


-------------------------------------------------

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

-------------------------------------

/*
Problem 8: Apply Function to Map Values
Write a function that takes a Map<String, int> and a function, and returns a new map where the function is applied to each value.

Map<String, int> data = {'a': 2, 'b': 4};
Function f = (x) => x * x;

Output: {'a': 4, 'b': 16}
*/


void main(){
Map<String,int> studentsNumber1 = {"Enamul":80,"Tawhid":99,"Tusar":100,"Saddam":67};
int Function(int) data = (x) => x + x;
var result = scores(studentsNumber1, data);
print(result);
}

Map<String,int> scores(Map<String,int> input,int Function(int) f){
  Map<String,int> newMap = {};
  for(var entry in input.entries){
    newMap[entry.key] = f(entry.value);
  }
  return newMap;
}

-------------------------------------------------

/*
 Problem 9: Count Letters
Write a function that takes a String and returns a Map<String, int> where each letter (ignoring space and case) is counted.

Input: "Hello World"
Output: {'h':1, 'e':1, 'l':3, 'o':2, 'w':1, 'r':1, 'd':1}

*/


void main(){
String text = "My Name is Enamul";
var result = letterCount(text);
print(result);
}

Map<String,int> letterCount(String name){
  Map<String,int> letterCount = {};
 String lowerCase = name.toLowerCase();
 for(int i=0; i<lowerCase.length; i++){
   String char = lowerCase[i];
   if(char!=' '){
     if(letterCount.containsKey(char)){
       letterCount[char] = letterCount[char]! + 1;
     }else{
       letterCount[char] =  1;
     }
   }
 }


  return letterCount;
}

-----------------------------------------------------------


/*
Problem 10: Custom Group By
Write a generic function groupBy<T, K> that takes a List<T> and a function that returns a key K for each element. Return a Map<K, List<T>>.

List<String> fruits = ['apple', 'banana', 'apricot', 'blueberry'];
groupBy(fruits, (fruit) => fruit[0]);

→ Output: {
  'a': ['apple', 'apricot'],
  'b': ['banana', 'blueberry']
}

*/


void main() {
  List<String> fruits = ['apple', 'banana', 'apricot', 'blueberry'];

  Map<String, List<String>> result = groupBy(fruits, (fruit) => fruit[0]);

  print(result);
}

Map<String, List<String>> groupBy(List<String> items, String Function(String) keySelector) {
  Map<String, List<String>> grouped = {};

  for (var item in items) {
    String key = keySelector(item);
    if (grouped.containsKey(key)) {
      grouped[key]!.add(item);
    } else {
      grouped[key] = [item];
    }
  }

  return grouped;
}


--------------------------------------------------------

/*
Problem 11: Invert a Map
Given a Map<String, int> and create a new Map<int, List<String>> where the keys will be grouped according to value.

Input: {'a': 1, 'b': 2, 'c': 1}
Output: {1: ['a', 'c'], 2: ['b']}

*/

void main() {
Map<String,int> orginalMap = {'Enamul': 1, 'Tusar': 2, 'Tawhid': 1};
Map<int, List<String>> result = invertMap1(orginalMap);
print(result);
}

Map<int, List<String>> invertMap1(Map<String,int> input) {
  Map<int, List<String>> invertMap = {};

  input.forEach((key,value){
    if(invertMap.containsKey(value)){
      invertMap[value]!.add(key);
    }else{
      invertMap[value] = [key];
    }
  });
  
  return invertMap;
}

-------------------------------------------------------

/*
Problem 12: Filter Map by Value
Take a Map<String, int> and a threshold as input.
Create a new Map with only the keys whose values are greater than the threshold.

Input: {'a': 5, 'b': 2, 'c': 8}, threshold = 4
Output: {'a': 5, 'c': 8}

*/

void main() {
Map<String,int> orginalMap = {'Enamul': 10, 'Tusar': 60, 'Tawhid': 70};
var number = 30;
Map<String, int> result = greaterMap1(orginalMap,number);
print(result);
}

Map<String, int> greaterMap1(Map<String,int> input,int number) {
  Map<String, int> newMap = {};

  input.forEach((key,value){
  if(value>number){
    newMap[key]=value;
  }
  });

  return newMap;
}

------------------------------------------------

/*
Problem 13: Merge Maps with Summed Values
Given two Map<String, int>. Add their values if they have the same key.

Input: {'a': 2, 'b': 3}, {'a': 5, 'c': 4}
Output: {'a': 7, 'b': 3, 'c': 4}

*/


void main() {
Map<String,int> student1 = {'Enamul':80,'tusar':90,'nayem':100,'mamun':99,'taslima':85,};
Map<String,int> student2 = {'Enamul':80,'rofiq':77,'mahabub':55,'niloy':88,'mamun':33,};
var result = add2Map(student1,student2);
print(result);

}

Map<String,int> add2Map (Map<String,int> map1 , Map<String,int> map2){
  Map<String,int> newMap = {};

  map1.forEach((key,value){
    newMap[key] = value;
  });

  map2.forEach((key,value){
  if(newMap.containsKey(key)){
    newMap[key] = newMap[key]!+ value;
  }else{
    newMap[key] = value;
  }
  });

  return newMap;
}


------------------------------------------------
/*
Problem 14: Word Frequency Counter
Given a String as input. Count the number of times each word occurs and return a Map<String, int>.
(Assuming it is separated by spaces)

Input: "dart is fun and dart is powerful"
Output: {'dart': 2, 'is': 2, 'fun': 1, 'and': 1, 'powerful': 1}

*/

void main() {
  String sentence = "dart is fun and dart is powerful";
  var result = wordCount(sentence);
//var result = countWords(sentence);
  print(result);

}

Map<String,int> wordCount (String input){
  Map<String,int> newMap = {};

  List<String> text = input.toLowerCase().split(' ');
  for(var word in text){
    if(newMap.containsKey(word)){
      newMap[word] = newMap[word]! + 1;
    }else{
      newMap[word] = 1;
    }
  }

  return newMap;
}


//orr

Map<String, int> countWords(String text) =>
    text
        .toLowerCase()
        .split(' ')
        .fold(<String, int>{}, (acc, word) {
      acc.update(word, (v) => v + 1, ifAbsent: () => 1);
      return acc;
    });



--------------------------------------------------------------


/*
Problem 15: Top N Values ​​from Map
Given a Map<String, int> and a number n.
Select the keys according to the largest n values and return them as a Map<String, int>.

Input: {'a': 5, 'b': 1, 'c': 8, 'd': 3}, n = 2
Output: {'c': 8, 'a': 5}

*/

void main() {
  Map<String, int> students = {
    'Enamul': 80,
    'Tusar': 90,
    'Nayem': 100,
    'Mamun': 99,
    'Taslima': 85
  };

  int number = 2;
  var result = topN2(students, number);
  print(result); // Output: {Nayem: 100, Mamun: 99}
}


Map<String, int> topN(Map<String, int> input, int n) {
  List<MapEntry<String, int>> sorted = input.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  Map<String, int> result = {};
  int count = 0;

  for (var entry in sorted) {
    if (count >= n) 
     {
    break;
   }else{
    result[entry.key] = entry.value;
    count++;
  }

  }

  return result;
}

//0rr

Map<String, int> topN2(Map<String, int> input, int n) {
  List<MapEntry<String, int>> sorted = input.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  Map<String, int> result = {};
  for (int i = 0; i < n && i < sorted.length; i++) {
    result[sorted[i].key] = sorted[i].value;
  }

  return result;
}


---------------------------------


/*
Problem 16: Remove Keys with Even Values
🔷 Problem:
You are given a Map<String, int>.
From that map, remove the keys whose values are even numbers ( 2, 4, 6) and return the rest.

input:{'a': 2, 'b': 3, 'c': 4, 'd': 5}

output:{'b': 3, 'd': 5}

*/

void main() {
  Map<String, int> students = {
    'Enamul': 80,
    'Tusar': 90,
    'Nayem': 100,
    'Mamun': 99,
    'Taslima': 85
  };

  var result = topN(students);
  print(result);


}


Map<String, int> topN(Map<String, int> input, ) {
 Map<String, int> newMap = {};

input.forEach((key,value){
  if(value%2!=0) {
    newMap[key]=value;
  }

});

 return newMap;

 }

------------------------------------------


/*
Problem 17: Group Words by Length
🔷 Problem:
Given a List<String>.
You will return a Map<int, List<String>> where the key is the length of the word, and the value is the list of all words of that length.

input : ['cat', 'dog', 'fish', 'goat', 'hi']

output: {
  3: ['cat', 'dog'],
  4: ['fish', 'goat'],
  2: ['hi']
}


*/

void main() {
 List<String> names =  ['cat', 'dog', 'fish', 'goat', 'hi'];

  var result = countNameLenth(names);
  print(result);


}


Map<int, List<String>> countNameLenth(List<String> input, ) {
 Map<int, List<String>> newMap = {};
for(var word in input){
 int lenth = word.length;
 if(newMap.containsKey(lenth)){
  newMap[lenth]!.add(word);
 }else{
  newMap[lenth]=[word];
 }
}

 return newMap;

 }


------------------------------------------------------------

/*
Problem 18: Check Map Equality
🔷 Problem:
Given two Map<String, int>.
Write a function that returns true if the keys and values ​​of the two maps are exactly the same (order is not important). Otherwise, false.

input : {'a': 1, 'b': 2}
{'b': 2, 'a': 1}

output: true
*/

void main() {
 Map<String,int> map1 =  {'a': 1, 'b': 2};
 Map<String,int> map2 = {'b': 2, 'a': 1};
  var result = checkMapEquality(map1,map2);
  print(result);


}


bool checkMapEquality(Map<String,int> map1, Map<String,int> map2 ) {

 if(map1.length!=map2.length){
  return false;
 }
 for(var key in map1.keys){
  if(!map2.containsKey(key) || map1[key]!=map2[key]){
   return false;
  }
 }

return true;
}

------------------------------------------------

/*
Problem 19: Convert List of Maps to Single Map
🔷 Problem:
You are given a List<Map<String, int>>.
You will return a Map<String, int> where multiple maps will be joined if their values ​​have the same key.

input : [
  {'a': 1, 'b': 2},
  {'a': 3, 'c': 4}
]

output: {'a': 4, 'b': 2, 'c': 4}
*/

void main() {
 List<Map<String, int>> listOfMap =  [
  {'a': 1, 'b': 2},
  {'a': 3, 'c': 4}
 ];

  var result = mergeListOfMaps(listOfMap);
  print(result);

}


Map<String, int> mergeListOfMaps(List<Map<String, int>> mapList ) {

 Map<String, int> newMap = {};
 for(var map in mapList){
  for(var entry in map.entries){
   if(newMap.containsKey(entry.key)){
    newMap[entry.key] = newMap[entry.key]! + entry.value;
   }else{
    newMap[entry.key] = entry.value;
   }
  }
 }

 return newMap;
}

------------------------------------------------------

/*
Problem 20: Sort Map by Values
🔷 Problem:
You are given a Map<String, int>.
You will return a new Map where the key-values are sorted by value from largest to smallest.

input : {'a': 10, 'b': 5, 'c': 20}

output: {'c': 20, 'a': 10, 'b': 5}
*/

void main() {
 Map<String, int> data =  {'a': 10, 'b': 5, 'c': 20};

  var result = sortedMap (data);
  print(result);

}


Map<String, int> sortedMap (Map<String, int> map1 ) {

 Map<String, int> newMap = {};
List<MapEntry<String, int>> mapToList = map1.entries.toList();
mapToList.sort((a,b)=>b.value.compareTo(a.value));
for(var entry in mapToList){
 newMap[entry.key] = entry.value;
}

 return newMap;
}

---------------------------------------------------

/*
Problem 21: Nested Map Flattener
Task: Write a function that takes a Map<String, Map<String, int>> and flattens it into a single Map<String, int>, combining keys as "outer.inner".

input : {
  'math': {'a': 80, 'b': 90},
  'science': {'a': 85, 'c': 75}
}

output : {
  'math.a': 80,
  'math.b': 90,
  'science.a': 85,
  'science.c': 75
}

*/

void main() {
 Map <String,Map<String, int>> data = {
   'math': {'a': 80, 'b': 90},
   'science': {'a': 85, 'c': 75}
 };

  var result = addedOuterInner(data);
  print(result);
}

Map<String, int> addedOuterInner(Map <String,Map<String, int>> map1) {
  Map<String, int> newMap = {};
 map1.forEach((outerKey,innerValue){
   innerValue.forEach((innerKey,innerValue){
     newMap['$outerKey.$innerKey']=innerValue;
   });
 });

  return newMap;
}


--------------------------------

/*
Problem 22: Most Common Value
Task: Given a Map<String, int>, return the value that appears most frequently.

input :{'a': 1, 'b': 2, 'c': 1, 'd': 3}
output : 1

*/

void main() {
  Map<String, int> data = {'a': 1, 'b': 2, 'c': 1, 'd': 3};

  var result = mostCommonValue(data);
  print(result);
}

int mostCommonValue(Map<String, int> map1) {
  Map<int,int> countValue = {};
 map1.forEach((key,value) {
   countValue[value]=(countValue[value] ?? 0) + 1;
 });
int mostFrequentValue = countValue.keys.first;
int maxCount = countValue[mostFrequentValue]!;
countValue.forEach((key,count){
  if(count>maxCount){
    maxCount=count;
    mostFrequentValue=key;
  }
});


  return mostFrequentValue;
}

---------------------------------------------------------

/*
Problem 23: Word Synonym Expander
Task: Given a list of words and a Map<String, List<String>> of synonyms, return a new list where each word is replaced by its synonyms (if available).

input : words = ['happy', 'sad']
       synonyms = {'happy': ['joyful', 'cheerful'], 'sad': ['unhappy']}

output : ['joyful', 'cheerful', 'unhappy']

*/

void main() {
  List words = ['happy', 'sad'];
  Map<String, List<String>> data = {'happy': ['joyful', 'cheerful'], 'sad': ['unhappy']};

  var result = synonymsValue(words,data);
  print(result);
}

List<String> synonymsValue(List words, Map<String, List<String>> map1) {

  List<String> synonyms = [];
  for(var word in words){
    if(map1.containsKey(word)){
     synonyms.addAll(map1[word]!);
    }
  }
  
  return synonyms;
}

------------------------------------------------------------



