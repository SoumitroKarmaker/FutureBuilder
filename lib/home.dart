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
      body: FutureBuilder(future: Info().getData(),
        builder: (BuildContext context,snapshot) {
        if(snapshot.hasData){
          return ListView.builder(itemCount: snapshot.data?.length ,
              itemBuilder: (context, index){
                return ListTile(
                  title: Text(snapshot.data ![index].name),
                  subtitle: Text(snapshot.data ![index].roll),
                  trailing: Text(snapshot.data ![index].email),
                );
              });
        }
        else{
          return const Center(child: CircularProgressIndicator());
        }
        },)
    );
  }
}
