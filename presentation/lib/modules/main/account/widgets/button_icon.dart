import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/constants/resources/colors.dart';

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({Key? key, required this.icon, required this.text, this.onPressed}) : super(key: key);
  final SvgPicture icon;
  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: EdgeInsets.only(top: 19.h),
      child: InkWell(
        onTap: onPressed,
        child: Row(
          children: [
            SizedBox(width: 18.w,),
            icon,
            SizedBox(width: 19.w,),
            CommonText(text: text, size: 14, color: AppColors.mainTextColor, fontWeight: FontWeight.w500,)
          ],
        ),
      ),
    );
  }
}
