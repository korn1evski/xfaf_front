import 'package:chat/constants/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextArea extends StatelessWidget {
  const TextArea({Key? key, required this.hintText, this.onChanged, required this.maxCharacters, required
  this.controller}) : super(key: key);
  final String hintText;
  final Function(String text)? onChanged;
  final int maxCharacters;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 122.h,
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        maxLines: 4,
        maxLength: maxCharacters,
        decoration: InputDecoration(
          counterText: '',
          contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
          hintText: hintText,
          hintStyle: TextStyle(color: AppColors.lightGreyBorder, fontSize: 14, fontFamily: 'INTER', height: 1),
          border: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: AppColors.lightGreyBorder),
              borderRadius: BorderRadius.circular(6.w)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: AppColors.lightGreyBorder)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: AppColors.lightGreyBorder),
              borderRadius: BorderRadius.circular(6.w)),
        ),
        style: TextStyle(
            fontSize: 14.sp,
            height: 1.71
        ),
      ),
    );
  }
}
