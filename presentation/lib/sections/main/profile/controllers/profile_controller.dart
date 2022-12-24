import 'package:chat/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:domain/di/domain_injection_container.dart' as domain_injection;
import 'package:shared_preferences/shared_preferences.dart';

class ProfileController extends GetxController {
  late SharedPreferences shared;
  Rx<int> orphanage = 0.obs;
  Rx<String> name = ''.obs;

  ProfileController();


  void logout(){
    shared.remove('access');
    Get.offNamed(Routes.LOGIN);
}

@override
  void onInit() async{
    shared = await SharedPreferences.getInstance();
    orphanage.value = shared.getInt("type")!;
    name.value = shared.getString('name')!;
    super.onInit();
  }
}