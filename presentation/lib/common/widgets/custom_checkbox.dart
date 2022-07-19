import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_constants.dart';
import '../../constants/resources/colors.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({Key? key, required this.backColor, required this.borderColor, this.width = 20, required this.isSelected, required this.onTap, this.radius = 4, this.checkArrowHeight = 9, this.checkArrowWidth = 12}) : super(key: key);
  final Color backColor;
  final Color borderColor;
  final double width;
  final double checkArrowHeight;
  final double checkArrowWidth;
  final double radius;
  final bool isSelected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 600),
          curve: Curves.fastLinearToSlowEaseIn,
          decoration: BoxDecoration(
              color: isSelected ? backColor : AppColors.lightGreyBorder,
              border: Border.all(width: 1, color: isSelected ? backColor : borderColor),
              borderRadius: BorderRadius.circular(radius)
          ),
          width: width.h,
          height: width.h,
          child: Center(
            child: isSelected ? AppAssets.checkArrow(width: checkArrowWidth, height: checkArrowHeight) : null ,
          )
      ),
    );
  }
}


