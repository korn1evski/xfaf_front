import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../common/widgets/common_text.dart';
import '../constants/app_constants.dart';
import '../constants/resources/colors.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({Key? key, required this.onTap, required this.icon, required this.text, this.withArrow = true, this.textColor, this.withBottomBorder = true, this.withTopBorder = false}) : super(key: key);
  final Function() onTap;
  final SvgPicture icon;
  final String text;
  final bool withArrow;
  final Color? textColor;
  final bool withBottomBorder;
  final bool withTopBorder;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(color:Colors.white,border: Border(bottom: BorderSide(width: withBottomBorder ? 1 : 0, color: AppColors.lightGreyBorder), top: BorderSide(width:   withTopBorder ? 1 : 0, color: AppColors.lightGreyBorder))),
          width: double.maxFinite,
          height: 52.h,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  icon,
                  SizedBox(
                    width: 10.w,
                  ),
                  CommonText(
                    text: text,
                    size: 14,
                    color: textColor ?? AppColors.grey400,
                  )
                ],
              ),
              withArrow ? AppAssets.arrowForward(color: AppColors.grey400) : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
