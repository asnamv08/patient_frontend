import 'package:flutter/material.dart';
import 'package:patient/pages/add.dart';
import 'package:patient/pages/search.dart';
import 'package:patient/pages/view.dart';

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu"),backgroundColor: Colors.pink.shade300,),
      body: Container(width: double.infinity,decoration: BoxDecoration(gradient: LinearGradient(
          colors: [
            Colors.pink,
            Colors.yellow
          ]
      )),padding: EdgeInsets.all(20),child: Column(children: [
        SizedBox(
          width: 250,
          height: 60,
          child: ElevatedButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>add()));
          }, child: Text("Add Patients")),
        ),
        SizedBox(height: 10,),
        SizedBox(
          width: 250,
          height: 60,
          child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>viewpatient()));
          }, child: Text("View Patients")),
        ),
        SizedBox(height: 10,),
        SizedBox(
          width: 250,
          height: 60,
          child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>searchpatient()));
          }, child: Text("Search Patient")),
        ),

      ],),),

    );
  }
}
