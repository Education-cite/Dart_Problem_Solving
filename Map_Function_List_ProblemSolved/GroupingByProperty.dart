/*
Problem 3: Grouping by Property
Given a list of students with their department, write a function groupByDepartment that groups them by department in a Map.
*/

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
