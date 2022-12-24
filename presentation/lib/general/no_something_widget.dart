import 'package:chat/common/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/resources/colors.dart';

class NoSomethingWidget extends StatelessWidget {
  const NoSomethingWidget({Key? key, required this.mainText, required this.secondaryText, required this.icon}) : super(key: key);
  final String mainText;
  final String secondaryText;
  final SvgPicture icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        Padding(padding: EdgeInsets.symmetric(vertical: 8.h), child: CommonText(text: mainText, size: 24, color: AppColors.grey400, lineHeight: 1.33, fontWeight: FontWeight.w600,)),
        CommonText(text: secondaryText, size: 14, lineHeight: 1.71, color: AppColors.grey400,)
      ],
    );
  }
}