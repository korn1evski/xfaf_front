import 'package:chat/common/widgets/auth_input.dart';
import 'package:chat/common/widgets/base/base_page.dart';
import 'package:chat/common/widgets/base/base_page_state.dart';
import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/common/widgets/custom_text_button.dart';
import 'package:chat/common/widgets/open_photo_widget.dart';
import 'package:chat/common/widgets/round_photo.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:chat/constants/resources/validation_functions.dart';
import 'package:chat/general/text_area.dart';
import 'package:chat/sections/main/add_child/controllers/add_child_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../constants/app_constants.dart';

class AddChildScreen extends StatefulWidget {
  const AddChildScreen({Key? key}) : super(key: key);

  @override
  State<AddChildScreen> createState() => _AddChildScreenState();
}

class _AddChildScreenState extends BasePageState<AddChildScreen> {
  final AddChildController addChildController = Get.find();
  @override
  Widget build(BuildContext context) {
    return BasePage(builder: (context){
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Center(
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: RoundPhoto(
                    image: addChildController.picture.value,
                    pickImage: addChildController.pickImage,
                  )),
            )),
            SizedBox(height: 30.h,),
            Obx(
                  () => AuthInput(
                controller: addChildController.firstController,
                validationFunc: simpleValid,
                showError: addChildController.showFirstError.value,
                labelText: 'Last name',
                onChange: (value) {
                  inputValidOnChange(addChildController.showFirstError);
                },
              ),
            ),
            Obx(
                  () => AuthInput(
                controller: addChildController.lastController,
                validationFunc: simpleValid,
                showError: addChildController.showLastError.value,
                labelText: 'First name',
                onChange: (value) {
                  inputValidOnChange(addChildController.showLastError);
                },
              ),
            ),
           TextArea(hintText: 'Enter description', maxCharacters: 100, controller: addChildController.textController),
            Obx(() => CommonText(text: addChildController.dateTime.value != null ?  DateFormat('yyyy-MM-dd').format(addChildController.dateTime.value!) : 'Pick date', size: 16, fontWeight: FontWeight.w600,)),
            ElevatedButton(onPressed: ()async {await addChildController.pickeDate(context);}, child: Text('Pick date')),
            SizedBox(height: 25.h,),
            CustomTextButton(
              onPressed: addChildController.finalValidate,
              text: 'Add',
              backColor: Colors.lightBlue,
              textColor: Colors.white,
            ),
          ],
        ),
      );
    });
  }
}
