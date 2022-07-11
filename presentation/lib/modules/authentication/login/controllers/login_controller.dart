import 'package:domain/modules/authentication/entities/index.dart';
import 'package:domain/modules/authentication/usecases/login_use_case.dart';
import 'package:domain/modules/chat/profile/usecases/get_profile_usecase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chat/constants/resources/help_functions.dart';
import 'package:chat/initial_binding.dart';
import 'package:chat/routes/app_pages.dart';

import '../../../../constants/resources/validation_functions.dart';

class LoginController extends GetxController {
  LoginController({required this.loginUseCase, required this.getProfileUseCase});

  late TextEditingController emailController;
  late TextEditingController passwordController;

  final LoginUseCase loginUseCase;
  final GetProfileUseCase getProfileUseCase;


  Rx<bool> showPasswordError = false.obs;
  Rx<bool> showEmailError = false.obs;
  Rx<bool> isLoading = false.obs;

  void finalValidatePage() async{
    final emailVerify = validateInput(emailController, showEmailError, emailValid);
    final passVerify = validateInput(passwordController, showPasswordError, passValid);

    if(emailVerify && passVerify){
      setIsLoading(isLoading);
      final result = await loginUseCase.call(LoginEntity(username: emailController.text.trim(), password: passwordController.text.trim()));
      setIsLoading(isLoading);
      result.fold((l){}, (r) async{
        if(r){
          await getProfileUseCase.call();
          InitialBinding().dependencies();
          Get.offNamed(Routes.MENU);
        }
      });
    }
  }

  @override
  void onInit(){
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose(){
    emailController.dispose();
    passwordController.dispose();
  }
}