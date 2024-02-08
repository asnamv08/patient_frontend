import 'package:flutter/material.dart';
import 'package:patient/services/patientservice.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  TextEditingController getPatientname=new TextEditingController();
  TextEditingController getPatientaddress=new TextEditingController();
  TextEditingController getPatientphone=new TextEditingController();
  TextEditingController getPatientsymptom=new TextEditingController();
  TextEditingController getPatientstatus=new TextEditingController();
  void Sendvaluetoapi()async{
    final response=await PatientApiService().senddata(
        getPatientname.text,
        getPatientaddress.text,
        getPatientphone.text,
        getPatientsymptom.text,
        getPatientstatus.text
    );
    if(response["status"]=="success")
    {
      print("successfully");
    }
    else
    {
      print("error");
    }


  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Patient Details"),backgroundColor: Colors.pink.shade300,),
          body:SingleChildScrollView(
            child: Container(padding: EdgeInsets.all(20),child: Column(children: [
              TextField(controller: getPatientname,decoration: InputDecoration(labelText: ("Patient Name"),hintText: ("enter  patient name"),border: OutlineInputBorder()),),
              SizedBox(height: 10,),
              TextField(controller: getPatientaddress,decoration: InputDecoration(labelText: ("Patient Address"),hintText: ("enter patient address"),border: OutlineInputBorder()),),
              SizedBox(height: 10,),
              TextField(controller: getPatientphone,decoration: InputDecoration(labelText: ("Patient Phone"),hintText: ("enter patient phone no"),border: OutlineInputBorder()),),
              SizedBox(height: 10,),
              TextField(controller: getPatientsymptom,decoration: InputDecoration(labelText: ("Patient Symtom"),hintText: ("enter patient symptom"),border: OutlineInputBorder()),),
              SizedBox(height: 10,),
              TextField(controller: getPatientstatus,decoration: InputDecoration(labelText: ("Patient Status"),hintText: ("enter patient status"),border: OutlineInputBorder()),),
              SizedBox(height: 10,),
              SizedBox(
                width: 250,
                height: 60,
                child: ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)
                ),onPressed: Sendvaluetoapi,
                    child: Text("Submit")),
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: 250,
                height: 60,
                child: ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)
                ),onPressed: ()
                {
                  Navigator.pop(context);
                }, child: Text("Back")),
              )
            ],),),
          )

      ),
    );
  }
}
