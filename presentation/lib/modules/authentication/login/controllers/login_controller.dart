import 'package:dio/dio.dart';
import 'package:domain/modules/authentication/entities/index.dart';
import 'package:domain/modules/authentication/usecases/login_use_case.dart';
import 'package:domain/modules/chat/profile/usecases/get_profile_usecase.dart';
import 'package:domain/modules/websocket/usecases/start_websocket_usecase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chat/constants/resources/help_functions.dart';
import 'package:chat/initial_binding.dart';
import 'package:chat/routes/app_pages.dart';
import 'package:domain/di/domain_injection_container.dart' as domain_injection;
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../constants/new_constants.dart';
import '../../../../constants/resources/validation_functions.dart';
import '../../../../entities/user_entity.dart';
import '../../../../general/error_snack.dart';

class LoginController extends GetxController {
  LoginController();

  late TextEditingController emailController;
  late TextEditingController passwordController;
  late SharedPreferences prefs;

  Rx<bool> showPasswordError = false.obs;
  Rx<bool> showEmailError = false.obs;
  Rx<bool> isLoading = false.obs;
  final dio = Dio();

  Future<void> finalValidatePage() async{
    final emailVerify = validateInput(emailController, showEmailError, emailValid);
    final passVerify = validateInput(passwordController, showPasswordError, passValid);

    if(emailVerify && passVerify){
      setIsLoading(isLoading);
      try{
        final response = await dio.post(NewConstants.mainUrl + 'login', data: {
          'email' : emailController.text,
          'password' : passwordController.text,
        });
        final ent = UserEnt.fromJson(response.data["data"]["user"]);
        prefs.setString('access', ent.accessToken);
        prefs.setInt('type', ent.type);
        prefs.setInt('id', ent.id);
        print(prefs.getString('access'));
        prefs.setString('name', ent.name);
        InitialBinding().dependencies();
        Get.offNamed(Routes.FEED);
      } catch(e){
        if(e is DioError)
          snack(e.response!.data['message']);
      }
      setIsLoading(isLoading);
    }
  }

  void clear(){
    emailController.clear();
    passwordController.clear();
  }

  @override
  void onInit() async{
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    prefs = await SharedPreferences.getInstance();
  }

  @override
  void onClose(){
    emailController.dispose();
    passwordController.dispose();
  }
}