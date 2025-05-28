
/*

Problem 27: Group Events by Date
Task: Given a list of events (Map<String, String>) with title and date, group them by date.

input : [
  {'title': 'Meeting', 'date': '2025-05-10'},
  {'title': 'Call', 'date': '2025-05-10'},
  {'title': 'Workshop', 'date': '2025-05-11'}
]

output :{
  '2025-05-10': ['Meeting', 'Call'],
  '2025-05-11': ['Workshop']
}

*/

void main(){
  List<Map<String,String>> events =[
    {'title': 'Meeting', 'date': '2025-05-10'},
    {'title': 'Call', 'date': '2025-05-10'},
    {'title': 'Workshop', 'date': '2025-05-11'}
  ] ;

  var result = groupEventsByDate( events);
  print(result);
}

Map<String,List<String>> groupEventsByDate(List<Map<String,String>> events){
  Map<String,List<String>> newMap = {};
 for(var event in events){
  String date = event['date']!;
  String title = event['title']!;
  if(!newMap.containsKey(date)){
    newMap[date]=[];
  }
  newMap[date]!.add(title);
 }


  return newMap;
}



