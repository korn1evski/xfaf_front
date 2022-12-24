import 'dart:io';

import 'package:chat/general/error_snack.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddChildController extends GetxController {

  Rx<bool> photoIsLoading = false.obs;
  Rxn<File> picture = Rxn();
  late TextEditingController lastController;
  late TextEditingController firstController;
  late TextEditingController textController;
  Rxn<DateTime> dateTime = Rxn();

  Rx<bool> showFirstError = false.obs;
  Rx<bool> showLastError = false.obs;
  Rx<bool> showTextError = false.obs;


  Future<void> pickeDate(BuildContext context) async{
   dateTime.value = await showDatePicker(context: context, initialDate: DateTime(2021, 01, 01), firstDate: DateTime(2004), lastDate: DateTime(2021));
   print(dateTime.value);
  }

  Future<void> finalValidate() async{
    if(dateTime.value != null && textController.value != null && lastController.value != null && firstController.value != null){

    } else{
      snack('Fill in all data');
    }
  }

  Future<void> pickImage(bool camera) async {
    try {
      late XFile? image;
      photoIsLoading.value = true;
      if(camera){
        image = await ImagePicker().pickImage(source: ImageSource.camera);
      } else {
        image = await ImagePicker().pickImage(source: ImageSource.gallery);
      }
      Get.back();
      if (image == null) {
        photoIsLoading.value = false;
        return;
      }
      picture.value = File(image.path);
      photoIsLoading.value = false;
      // response.fold((l){
      //   print('Upload image error');
      // }, (r){
      //   if(r.isNotEmpty){
      //     pictureEntity = r[0];
      //     picture.value = imageTemp;
      //   } else{
      //     return null;
      //   }
      // });
    } on PlatformException catch (e) {
      print('Error');
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    firstController = TextEditingController();
    lastController = TextEditingController();
    textController = TextEditingController();
  }
}