import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/constants/app_constants.dart';
import 'package:chat/generated/locale_keys.loc.dart';
import 'package:chat/modules/authentication/register/controllers/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart' hide Trans;
import 'package:chat/common/widgets/auth_input.dart';
import 'package:chat/common/widgets/base/base_page.dart';
import 'package:chat/common/widgets/base/base_page_state.dart';
import 'package:chat/common/widgets/custom_app_bar.dart';
import 'package:chat/common/widgets/custom_text_button.dart';
import 'package:chat/common/widgets/password_input.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:chat/constants/resources/validation_functions.dart';
import 'package:chat/modules/authentication/login/controllers/login_controller.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => RegisterScreenState();
}

class RegisterScreenState extends BasePageState<RegisterScreen> {
  RegisterController registerController = Get.find();

  @override
  void initState() {
    super.initState();
    registerController.isLoading.listen((value) {
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
                  CustomAppBar(text: 'Register', withBackArrow: true, ),
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
                            controller: registerController.nameController,
                            validationFunc: simpleValid,
                            showError: registerController.showNameError.value,
                            labelText: 'Name',
                            onChange: (value) {
                              inputValidOnChange(registerController.showNameError);
                            },
                          ),
                        ),
                        Obx(
                              () => AuthInput(
                            controller: registerController.emailController,
                            validationFunc: emailValid,
                            showError: registerController.showEmailError.value,
                            labelText: LocaleKeys.email.tr().capitalize!,
                            onChange: (value) {
                              inputValidOnChange(registerController.showEmailError);
                            },
                          ),
                        ),
                        Obx(() => PasswordInput(
                          controller: registerController.passwordController,
                          validationFunc: passValid,
                          showError: registerController.showPasswordError.value,
                          onChange: (value) {
                            inputValidOnChange(registerController.showPasswordError);
                          },
                        )),
                        CommonText(text: 'Do you represent orphanage?', size: 14, fontWeight: FontWeight.w600,),
                        Switch(value: registerController.client.value, onChanged: (bool){
                          registerController.client.value = !registerController.client.value;
                          print(registerController.client.value);
                        }),
                        SizedBox(
                          height: 16.h,
                        ),
                        CustomTextButton(
                          onPressed: registerController.finalValidatePage,
                          text: 'Register',
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
