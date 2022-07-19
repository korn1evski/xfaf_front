import 'dart:io';

import 'package:domain/modules/attachments/usecases/upload_files_use_case.dart';
import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class GroupInitialSettingsController extends GetxController {
  late TextEditingController nameController;
  Rx<String> nameControllerValue = ''.obs;
  Rx<bool> photoIsLoading = false.obs;
  final UploadFilesUseCase uploadFilesUseCase;
  PictureEntity? pictureEntity;
  Rxn<File> picture = Rxn();
  GroupInitialSettingsController({required this.uploadFilesUseCase});





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
      final imageTemp = File(image.path);
      final response = await uploadFilesUseCase.call([imageTemp]);
      photoIsLoading.value = false;
      response.fold((l){
        print('Upload image error');
      }, (r){
        if(r.isNotEmpty){
          pictureEntity = r[0];
          picture.value = imageTemp;
        } else{
          return null;
        }
      });
    } on PlatformException catch (e) {
      print('Error');
    }
  }

  @override
  onInit(){
    super.onInit();
    nameController = TextEditingController();
  }

  @override
  onClose(){
    super.onClose();
    nameController.dispose();
    pictureEntity = null;
  }
}