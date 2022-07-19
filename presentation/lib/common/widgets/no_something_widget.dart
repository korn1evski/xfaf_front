import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NoSomethingWidget extends StatelessWidget {
  const NoSomethingWidget({Key? key, required this.icon, required this.text}) : super(key: key);
  final SvgPicture icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          SizedBox(height: 16.h,),
          CommonText(text: text, size: 16, lineHeight: 1.2, color: AppColors.mainTextColor,)
        ],
      ),
    );
  }
}
