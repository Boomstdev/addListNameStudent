import 'package:flutter/material.dart';
import 'package:flutter_student_class/student.dart';
import 'package:flutter_student_class/addStudentScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var a = listStudentInSchool();

  @override
  Widget build(BuildContext context) {
    print(a.students);
    return Scaffold(
      appBar: AppBar(
        title: Text('School'),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.grey,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //a.addStudent(name, classRoom, number)
          showModalBottomSheet(
              context: context,
              builder: (context) =>
                  addStudentScreen((addNewName, addNewClass, addNewNumber) {
                    setState(() {
                      a.addStudent(addNewName, addNewClass, addNewNumber);
                    });
                    print(addNewName);
                    print(addNewClass);
                    print(addNewNumber);
                  })
          );
        },
      ),
      body: ListView.builder(
        itemCount: a.students.length,
        itemBuilder: (BuildContext context, int index) {
          print(a.students.length);
          return Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(a.students[index]['name']),
                Text(a.students[index]['classRoom']),
                Text(a.students[index]['number'])
              ],
            ),
          );
        },
      ),
    );
  }
}
