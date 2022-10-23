import 'package:swasthya_gram/screens/chech_up/chech_up.dart';
import 'package:http/http.dart' as http;

class CheckUpProvider {
  var url = "https://387e-14-139-82-6.in.ngrok.io/patients/3333";

  loadDataFromApi() async {
    var response = await http.get(Uri.parse(url));
    return response.body;
  }
}
