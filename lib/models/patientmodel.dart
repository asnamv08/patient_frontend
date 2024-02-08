// To parse this JSON data, do
//
//     final posts = postsFromJson(jsonString);

import 'dart:convert';

List<Posts> postsFromJson(String str) => List<Posts>.from(json.decode(str).map((x) => Posts.fromJson(x)));

String postsToJson(List<Posts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Posts {
  String id;
  String patientname;
  String patientaddress;
  String patientphone;
  String patientsymptons;
  String patientstatus;
  int v;

  Posts({
    required this.id,
    required this.patientname,
    required this.patientaddress,
    required this.patientphone,
    required this.patientsymptons,
    required this.patientstatus,
    required this.v,
  });

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
    id: json["_id"],
    patientname: json["patientname"],
    patientaddress: json["patientaddress"],
    patientphone: json["patientphone"],
    patientsymptons: json["patientsymptons"],
    patientstatus: json["patientstatus"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "patientname": patientname,
    "patientaddress": patientaddress,
    "patientphone": patientphone,
    "patientsymptons": patientsymptons,
    "patientstatus": patientstatus,
    "__v": v,
  };
}
