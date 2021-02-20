import 'package:flutter/material.dart';
import 'package:flutter_student_class/student.dart';

class addStudentScreen extends StatelessWidget {
  addStudentScreen(this.addNewStudent);
  String newStudentName;
  var newClassRoom;
  var newNumber;
final Function addNewStudent;

void addNew(){
 return listStudentInSchool().addStudent(newStudentName, newClassRoom, newNumber);
}



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      height: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Student Data',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          Text(
            'Name',
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newName) {
              newStudentName = newName;
            },
          ),
          Text(
            'Class Room',
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newClass) {
              newClassRoom = newClass;
            },
          ),
          Text(
            'Number',
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newNo) {
              newNumber = newNo;
            },
          ),
          FlatButton(
            onPressed: (){
              addNewStudent(newStudentName,newClassRoom,newNumber);
            // addNewClassRoom(newClassRoom);
            //addNewNumber(newNumber);
            //addNew();
              Navigator.pop(context);
            },
            child: Text('Add'),
            color: Colors.blueAccent,
          ),

        ],
      ),
    );
  }
}
