import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/constants/app_constants.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:chat/constants/resources/validation_functions.dart';

class AuthInput extends StatelessWidget {
  const AuthInput(
      {Key? key,
      required this.controller,
      this.validationFunc = simpleValid,
      this.showError = false,
      this.onChange,
      this.onlyNumbers = false,
      this.labelText,
      this.width = double.maxFinite})
      : super(key: key);
  final TextEditingController controller;
  final String? Function(String?) validationFunc;
  final Function(String?)? onChange;
  final bool showError;
  final bool onlyNumbers;
  final String? labelText;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.authInputColor,
            borderRadius: BorderRadius.circular(8.w),
          border: showError ? Border.all(width: 1, color: AppColors.helpColorRed500) : null,
          ),
          margin: EdgeInsets.zero,
          height: 48.h,
          width: width.w,
          child: Center(
            child: TextField(
              onChanged: onChange,
              controller: controller,
              decoration: InputDecoration(
                labelText: labelText,
                labelStyle: TextStyle(
                  height: 1,
                  color: AppColors.labelColor,
                ),
                isDense: true,
                contentPadding: EdgeInsets.only(bottom: 8.h, left: 16.w, top: 10.h),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(6)),
                focusedBorder: const OutlineInputBorder(
                    borderSide:  BorderSide.none),
              ),
              keyboardType: onlyNumbers ? TextInputType.number : null,
              inputFormatters: onlyNumbers ? [FilteringTextInputFormatter.digitsOnly] : null,
              style: TextStyle(
                fontSize: 14,
                height: 1,
                color: AppColors.mainTextColor
              ),
            ),
          ),
        ),
        SizedBox(
            height: 20,
            child: showError
                ? CommonText(
                    text: validationFunc(controller.text) ?? '',
                    size: 12,
                    color: AppColors.helpColorRed600,
                    lineHeight: 1.33,
                  )
                : null)
      ],
    );
  }
}
