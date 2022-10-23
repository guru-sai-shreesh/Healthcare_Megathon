// To parse this JSON data, do
//
//     final getPatient = getPatientFromJson(jsonString);

import 'dart:convert';

GetPatient getPatientFromJson(String str) =>
    GetPatient.fromJson(json.decode(str));

String getPatientToJson(GetPatient data) => json.encode(data.toJson());

class GetPatient {
  GetPatient({
    required this.id,
    required this.name,
    required this.aadhaarno,
    required this.dob,
    required this.gender,
    required this.height,
    required this.weight,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String name;
  String aadhaarno;
  DateTime dob;
  String gender;
  int height;
  int weight;
  String address;
  String latitude;
  String longitude;
  DateTime createdAt;
  DateTime updatedAt;

  factory GetPatient.fromJson(Map<String, dynamic> json) => GetPatient(
        id: json["id"],
        name: json["name"],
        aadhaarno: json["aadhaarno"],
        dob: DateTime.parse(json["dob"]),
        gender: json["gender"],
        height: json["height"],
        weight: json["weight"],
        address: json["address"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "aadhaarno": aadhaarno,
        "dob":
            "${dob.year.toString().padLeft(4, '0')}-${dob.month.toString().padLeft(2, '0')}-${dob.day.toString().padLeft(2, '0')}",
        "gender": gender,
        "height": height,
        "weight": weight,
        "address": address,
        "latitude": latitude,
        "longitude": longitude,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

// To parse this JSON data, do
//
//     final addPatient = addPatientFromJson(jsonString);

AddPatient addPatientFromJson(String str) =>
    AddPatient.fromJson(json.decode(str));

String addPatientToJson(AddPatient data) => json.encode(data.toJson());

class AddPatient {
  AddPatient({
    required this.name,
    required this.aadhaarNo,
    required this.dob,
    required this.gender,
    required this.height,
    required this.weight,
    required this.address,
    this.latitude,
    this.longitude,
  });

  String name;
  String aadhaarNo;
  String dob;
  String gender;
  int height;
  int weight;
  String address;
  String? latitude;
  String? longitude;

  factory AddPatient.fromJson(Map<String, dynamic> json) => AddPatient(
        name: json["name"],
        aadhaarNo: json["aadhaarno"],
        dob: json["dob"],
        gender: json["gender"],
        height: json["height"],
        weight: json["weight"],
        address: json["address"],
        latitude: json["latitude"],
        longitude: json["longitude"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "aadhaarno": aadhaarNo,
        "dob": dob,
        "gender": gender,
        "height": height,
        "weight": weight,
        "address": address,
        "latitude": latitude,
        "longitude": longitude,
      };
}
