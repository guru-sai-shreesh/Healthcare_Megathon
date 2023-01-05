import 'dart:convert';

import 'package:swasthya_gram/model/patient.dart';
import 'package:swasthya_gram/screens/chech_up/chech_up.dart';
import 'package:http/http.dart' as http;

class LinkUpProvider {
  var url = 'https://d7e6-14-139-82-6.in.ngrok.io/patients';

  setDatatoApi(AddPatient patient) async {
    http.Response result = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(patient.toJson()),
    );
  }
}
