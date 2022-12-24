import 'package:chat/entities/orphan_entity.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../constants/new_constants.dart';
import '../../../../constants/resources/help_functions.dart';
import '../../../../general/error_snack.dart';

class FirstController extends GetxController {
  late SharedPreferences sharedPreferences;
  RxList<Orphan> entities = RxList();
  final Dio dio = Dio();
  Rx<String> name = ''.obs;
  Rx<String> street = ''.obs;
  Rx<String> mainPhoto = ''.obs;
  Rx<bool> isLoading = false.obs;

  Future<void> initial() async {
    int id = Get.arguments[0];
    name.value = Get.arguments[1];
    street.value = Get.arguments[2];
    mainPhoto.value = Get.arguments[3];

    try{
      setIsLoading(isLoading);
      final response = await dio.post(NewConstants.mainUrl + 'get-all-orphans/$id', data: {
        'access_token' : sharedPreferences.getString('access'),
      });
      setIsLoading(isLoading);
      entities.value = List<Orphan>.from(response.data['data']['orphans'].map((model) => Orphan.fromJson(model)));
      print(entities.value);
    } catch(e){
      if(e is DioError) {
        snack(e.response!.data['message']);
        setIsLoading(isLoading);
      }
    }
  }

  @override
  Future<void> onInit() async{
    super.onInit();
    sharedPreferences = await SharedPreferences.getInstance();
    await initial();
  }
}
