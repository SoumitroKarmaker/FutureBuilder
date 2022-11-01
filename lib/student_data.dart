import 'package:practice/model.dart';

class Info{
  List <Model> _studentData =[
    Model(name: 'soumitro', roll: '1564652', phone: '0514562120', email: 'aihf@gmail.com'),
    Model(name: 'soumitro', roll: '1564652', phone: '0514562120', email: 'aihf@gmail.com'),
    Model(name: 'soumitro', roll: '1564652', phone: '0514562120', email: 'aihf@gmail.com'),
  ];

  Future<List<Model>> getData() async {
   await Future.delayed(Duration(seconds: 5));
    return _studentData;
  }

}