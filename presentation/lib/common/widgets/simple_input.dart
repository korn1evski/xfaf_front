import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/constants/app_constants.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:chat/constants/resources/validation_functions.dart';

class SimpleInput extends StatelessWidget {
  const SimpleInput(
      {Key? key,
        required this.controller,
        this.withPrefix = false,
        this.onChange,
        this.onlyNumbers = false, this.hintText, this.width = double.maxFinite})
      : super(key: key);
  final TextEditingController controller;
  final String? hintText;
  final bool withPrefix;
  final Function(String?)? onChange;
  final bool onlyNumbers;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backColor2,
        borderRadius: BorderRadius.circular(18.w)
      ),
      margin: EdgeInsets.zero,
      height: 36.h,
      width: width.w,
      child: TextFormField(
        onChanged: onChange,
        controller: controller,
        decoration: InputDecoration(
          isDense: true,
          prefixIconConstraints: withPrefix
              ? BoxConstraints(
            maxWidth: 45.w,
            maxHeight: 25.h,
          )
              : null,
          prefixIcon: withPrefix
              ? Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 0),
            child: AppAssets.searchIcon(color: AppColors.mainTextColor),
          )
              : null,
          prefix: Padding(
            padding: withPrefix ? const EdgeInsets.only(left: 0) : EdgeInsets.only(left: 16.w),
          ),
          contentPadding: EdgeInsets.only(bottom: 13.h, right: 16.w, top: 13.h),
          hintText: hintText ?? '',
          hintStyle: TextStyle(color: AppColors.labelColor, fontSize: 14, height: 1, fontWeight: FontWeight.w500),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: AppColors.mainBorderColor),
              borderRadius: BorderRadius.circular(18.w)
          ),
          border: OutlineInputBorder(
              borderSide:  BorderSide(width: 1, color: AppColors.mainBorderColor),
              borderRadius: BorderRadius.circular(18.w)),
          focusedBorder: OutlineInputBorder(
              borderSide:  BorderSide(width: 1, color: AppColors.mainBorderColor),
              borderRadius: BorderRadius.circular(18.w)
          ),
        ),
        keyboardType: onlyNumbers ? TextInputType.number : null,
        inputFormatters: onlyNumbers ? [FilteringTextInputFormatter.digitsOnly] : null,
        style: TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}
