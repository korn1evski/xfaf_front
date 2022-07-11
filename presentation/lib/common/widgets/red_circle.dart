import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/constants/resources/colors.dart';

class RedCircle extends StatelessWidget {
  const RedCircle({Key? key, required this.number}) : super(key: key);
  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.w),
      height: 14.h,
      decoration: BoxDecoration(color: AppColors.notificationRed, borderRadius: BorderRadius.circular(16.h)),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Center(
                child: CommonText(
                  text: number.toString(),
                  size: 10,
                  color: Colors.white,
                )),
      ),
    );
  }
}
