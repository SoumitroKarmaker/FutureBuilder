import 'package:flutter/material.dart';
import 'package:practice/student_data.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future'),
      ),
      body: ListView.builder(
          itemCount: StudentData().studentData.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(StudentData().studentData[index].name),
              subtitle: Text(StudentData().studentData[index].email),
              trailing: Text(StudentData().studentData[index].roll),
            );
          }),
    );
  }
}
