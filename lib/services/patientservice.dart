import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:patient/models/patientmodel.dart';

class PatientApiService{
  Future<dynamic>senddata(
      String name,String address,String phone,String symptom,String status,
      ) async{
    var client=http.Client();
    var apiurl=Uri.parse("http://192.168.251.163:3001/api/patient/patient_entry");
    var response=await client.post(apiurl,
        headers: <String,String>{
          "Content-Type":"application/json; charset=UTF-8"
        },
        body:jsonEncode(<String,String>{
          "patientname": name,
          "patientaddress": address,
          "patientphone": phone,
          "patientsymptons": symptom,
          "patientstatus": status

        }));
    if(response.statusCode==200)
    {
      return jsonDecode(response.body);
    }
    else
    {
      throw Exception("Failed To Send Data");
    }

  }
Future<List<Posts>> getPosts()async{
  var client=http.Client();
  var apiurl=Uri.parse("http://localhost:3001/api/booksapp/view");
  var response=await client.get(apiurl);
  if(response.statusCode==200)
  {
    return postsFromJson(response.body);
  }
  else
  {
    return [];
  }
}
}