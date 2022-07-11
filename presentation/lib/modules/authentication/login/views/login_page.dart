import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:chat/common/widgets/auth_input.dart';
import 'package:chat/common/widgets/base/base_page.dart';
import 'package:chat/common/widgets/base/base_page_state.dart';
import 'package:chat/common/widgets/custom_app_bar.dart';
import 'package:chat/common/widgets/custom_text_button.dart';
import 'package:chat/common/widgets/password_input.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:chat/constants/resources/validation_functions.dart';
import 'package:chat/modules/authentication/login/controllers/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends BasePageState<LoginPage> {
  LoginController loginController = Get.find();

  @override
  void initState() {
    super.initState();
    loginController.isLoading.listen((value) {
      controller.isLoading.value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
        controller: controller,
        builder: (context) {
          return SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(text: 'Login'),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16.h,
                    ),
                    Obx(
                      () => AuthInput(
                        controller: loginController.emailController,
                        validationFunc: emailValid,
                        showError: loginController.showEmailError.value,
                        labelText: 'Email',
                        onChange: (value) {
                          inputValidOnChange(loginController.showEmailError);
                        },
                      ),
                    ),
                    Obx(() => PasswordInput(
                          controller: loginController.passwordController,
                          validationFunc: passValid,
                          showError: loginController.showPasswordError.value,
                          onChange: (value) {
                            inputValidOnChange(loginController.showPasswordError);
                          },
                        )),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomTextButton(
                      onPressed: loginController.finalValidatePage,
                      text: 'Login',
                      backColor: AppColors.blueWhiteBack,
                      textColor: AppColors.blueWhiteText,
                    ),
                  ],
                ),
              )
            ],
          ));
        });
  }
}
