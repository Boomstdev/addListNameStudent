import 'package:flutter/material.dart';

class listStudentInSchool {
  var name;
  var classRoom;
  var number;
  var students = [
    {'name': 'Ice', 'classRoom': '4', 'number': '1'},
    {'name': 'Max', 'classRoom': '4', 'number': '2'},
    {'name': 'Ton', 'classRoom': '4', 'number': '3'},
    {'name': 'Som', 'classRoom': '4', 'number': '4'},
  ];

  void addStudent(name , classRoom, number){
    students.add({'name': name, 'classRoom': classRoom, 'number': number});
  }

}