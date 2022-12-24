import 'package:chat/constants/new_constants.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:chat/general/error_snack.dart';
import 'package:chat/routes/app_pages.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../../../../constants/resources/help_functions.dart';
import '../../../../constants/resources/validation_functions.dart';
import '../../../../entities/user_entity.dart';

class RegisterController extends GetxController {
  RegisterController();

  Rx<bool> client = false.obs;

  late SharedPreferences prefs;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController nameController;
  late TextEditingController passwordRepeat;

  String? passRepeatValid(String? value){
    if (value?.toLowerCase() != passwordRepeat.text.toLowerCase()) {
      return "Passwords don't match";
    }
  }

  Rx<bool> showPasswordError = false.obs;
  Rx<bool> repeatPasswordError = false.obs;
  Rx<bool> showEmailError = false.obs;
  Rx<bool> showNameError = false.obs;
  Rx<bool> isLoading = false.obs;
  final dio = Dio();

  Future<void> finalValidatePage() async{
    final emailVerify = validateInput(emailController, showEmailError, emailValid);
    final passVerify = validateInput(passwordController, showPasswordError, passValid);
    final nameVerify = validateInput(nameController, showNameError, simpleValid);

    if(emailVerify && passVerify && nameVerify){
      print("All is fine");
      setIsLoading(isLoading);
      try{
        final response = await dio.post(NewConstants.mainUrl + 'create-orphan', data: {
          'email' : emailController.text,
          'name' : nameController.text,
          'password' : passwordController.text,
          'type' : client.value ? 1 : 0
        });
        final ent = UserEnt.fromJson(response.data["data"]["user"]);
        prefs.setString('access', ent.accessToken);
        prefs.setInt('type', client.value == true ? 1 : 0);
        prefs.setInt('id', ent.id);
        prefs.setString('name', ent.name);
        print(prefs.getString('access'));
        Get.offNamed(Routes.FEED);
      } catch(e){
        if(e is DioError)
        snack(e.response!.data['message']);
      }
      setIsLoading(isLoading);
    }
  }

  @override
  void onInit() async{
    super.onInit();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    passwordRepeat = TextEditingController();
    prefs = await SharedPreferences.getInstance();
  }

  @override
  void onClose(){
  }
}