import 'package:swasthya_gram/screens/chech_up/chech_up.dart';
import 'package:http/http.dart' as http;
import 'package:swasthya_gram/screens/link_up/aaddhar_linkup.dart';

class CheckUpProvider {
  var url = "https://d7e6-14-139-82-6.in.ngrok.io/patients/" + aadhar.text;

  loadDataFromApi() async {
    // url += aadhar;
    var response = await http.get(Uri.parse(url));
    return response.body;
  }
}
