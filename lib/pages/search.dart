import 'package:flutter/material.dart';

class searchpatient extends StatefulWidget {
  const searchpatient({super.key});

  @override
  State<searchpatient> createState() => _searchpatientState();
}

class _searchpatientState extends State<searchpatient> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Patient Search"),backgroundColor: Colors.pink.shade300,),
        body: Container(width: double.infinity,decoration: BoxDecoration(gradient: LinearGradient(colors: [
          Colors.pink,
          Colors.yellow
        ])),padding: EdgeInsets.all(20),child: Column(children: [
        TextField(decoration: InputDecoration(labelText: ("Enter patient Phone number"),border: OutlineInputBorder()),),
        SizedBox(height: 10,),
        SizedBox(
          width: 250,
          height: 60,
          child: ElevatedButton(style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.pink
          ),onPressed: (){}, child: Text("Search")),
        ),
        SizedBox(height: 10,),
        SizedBox(
          width: 250,
          height: 60,
          child: ElevatedButton(style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.pink
          ),onPressed: (){
            Navigator.pop(context);
          }, child: Text("Back")),
        )
        ]),)

      ),
    );
  }
}
