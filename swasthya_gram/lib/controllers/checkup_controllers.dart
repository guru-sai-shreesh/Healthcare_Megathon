import 'package:get/get.dart';
import 'package:swasthya_gram/model/patient.dart';
import 'package:swasthya_gram/service/checkup_provider.dart';

class CheckUpController extends GetxController {
  CheckUpProvider CheckUpRepository = CheckUpProvider();
  RxBool loading = false.obs;
  late GetPatient checkup;

  CheckUpController() {
    loadCheckUpFromRepo();
  }

  loadCheckUpFromRepo() async {
    loading(true);
    checkup = getPatientFromJson(await CheckUpRepository.loadDataFromApi());
    loading(false);
  }
}
