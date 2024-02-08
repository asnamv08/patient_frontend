import 'package:flutter/material.dart';
import 'package:patient/models/patientmodel.dart';
import 'package:patient/services/patientservice.dart';

class viewpatient extends StatefulWidget {
  const viewpatient({super.key});

  @override
  State<viewpatient> createState() => _viewpatientState();
}

class _viewpatientState extends State<viewpatient> {
  Future<List<Posts>>? data;
  void initState() {
    // TODO: implement initState
    super.initState();
    data=PatientApiService().getPosts();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
        ),
        body: FutureBuilder(
            future: data,
            builder: (context,snapshot){
              if(snapshot.hasData && snapshot.data!.isNotEmpty){
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder:(value,index){
                      return Card(
                        child: Column(
                          children: [
                            ListTile(
                                title:  Text("Name: "+snapshot.data![index].patientname.toString()),
                                subtitle: Text("Address:"+snapshot.data![index].patientaddress.toString()+"\n"+"Phoner:"+snapshot.data![index].patientphone.toString()+"\n"+"Symptom:"+snapshot.data![index].patientsymptons+"\n"+"Status:"+snapshot.data![index].patientstatus),
                                leading:CircleAvatar(child: Text(snapshot.data![index].patientname.toString()[0]),)
                            )

                            /* Text(snapshot.data![index].vistorName.toString()),
                    Text(snapshot.data![index].vistorPlace.toString()),
                    Text(snapshot.data![index].vistorAadhar.toString()),
                    Text(snapshot.data![index].vistorPlace.toString()),
                    Text(snapshot.data![index].vistorPhone.toString()),*/
                          ],
                        ),
                      );

                    }
                );
              }
              else{
                return Text("Fetching data");
              }

            }

        ),

      ),
    );
  }
}
