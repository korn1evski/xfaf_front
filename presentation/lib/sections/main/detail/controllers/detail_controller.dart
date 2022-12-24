import 'package:chat/entities/orphan_entity.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  Rx<Orphan> orphan = Orphan(id: -1, orphanBuildingId: -1, firstName: '', lastName: '', birthday: '', image: []).obs;
  
  Rx<int> age = 1.obs;

  calculateAge(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthDate.year;
    int month1 = currentDate.month;
    int month2 = birthDate.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = birthDate.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age;
  }
  
  @override
  void onInit() {
    orphan.value = Get.arguments[0];
    List<String> temp = orphan.value.birthday.split('.');
    age.value = calculateAge(DateTime(int.parse(temp[2]), int.parse(temp[1]), int.parse(temp[0] )));
  }
}