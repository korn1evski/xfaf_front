import 'dart:io';

import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:domain/modules/chat/profile/entities/index.dart';
import 'package:domain/modules/current_user_session/entities/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'colors.dart';

void setIsLoading(Rx<bool> isLoading) {
  isLoading.value = !isLoading.value;
}

void showErrorSnackBar(dynamic errObj) {
  Map<String, dynamic> map = errObj;
  String errorMessage = '';
  map.forEach((key, value) {
    if (value is List) {
      for (final element in value) {
        errorMessage += "${element.toString().capitalizeFirst}\n\n";
      }
    } else {
      errorMessage += "${value.toString().capitalizeFirst}\n\n";
    }
  });
  Get.snackbar('Errors\n', errorMessage,
      backgroundColor: AppColors.blueWhiteBack,
      colorText: AppColors.blueWhiteText,
      snackPosition: SnackPosition.BOTTOM);
}

void showAreYouSure(String titleText, String mainText, Function()? onConfirm) {
  Get.defaultDialog(
      radius: 16,
      backgroundColor: Colors.white,
      title: titleText,
      titleStyle: TextStyle(color: Colors.black),
      middleTextStyle: TextStyle(color: Colors.black),
      middleText: mainText,
      textCancel: 'Cancel',
      cancelTextColor: Colors.black,
      textConfirm: 'Let\'s go',
      confirmTextColor: Colors.white,
      buttonColor: AppColors.mainBlue,
      onConfirm: () async {
        if (onConfirm != null) {
          await onConfirm();
        }
      });
}

String getConversationImg(ConversationEntity conversationEntity,
    CurrentUserEntity currentUserEntity) {
  String photo = '';
  if (conversationEntity.type == 1) {
    conversationEntity.members.forEach((member) {
      if (member.id != currentUserEntity.id) {
        if (member.photo != null) {
          photo = member.photo!;
        }
      }
    });
  }
  return photo;
}

String givePrivateConversationName(CurrentUserEntity currentUserEntity,
    ConversationEntity conversationEntity) {
  String result = '';
  if (conversationEntity.members.length == 1) {
    return conversationEntity.name;
  }
  conversationEntity.members.forEach((member) {
    if (member.id != currentUserEntity.id) {
      result = '${member.firstName} ${member.lastName}';
    }
  });
  return result;
}

String returnRoomsTextEvent(String text) {
  final result = text == 'CONVERSATION_MEMBER_CREATE'
      ? 'New member was added'
      : text == 'CONVERSATION_CREATE'
          ? 'Conversation was created'
          : text == 'CONVERSATION_MEMBER_DELETE'
              ? 'Conversation was left by a member'
              : '';
  return result;
}
