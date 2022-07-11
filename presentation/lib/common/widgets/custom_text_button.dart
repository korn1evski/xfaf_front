import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/constants/resources/colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {Key? key,
        required this.text,
        required this.backColor,
        this.textColor = Colors.white,
        this.width = double.maxFinite,
        this.height,
        this.radius = 26,
        this.fontWeight = FontWeight.w600,
        this.disabled = false,
        this.onPressed,
        this.isLoading = false,
        this.withBorder = false,
        this.icon,
        this.fontSize = 14
      })
      : super(key: key);
  final String text;
  final Color textColor;
  final Color backColor;
  final double? height;
  final double width;
  final double radius;
  final FontWeight fontWeight;
  final bool disabled;
  final Function()? onPressed;
  final bool isLoading;
  final bool withBorder;
  final SvgPicture? icon;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Ink(
        height: height?.w ?? 48.w,
        width: width,
        child: Stack(
          children: [
            OutlinedButton(
              onPressed: null,
              child: Center(
                  child: isLoading
                      ? Container(
                    width: 12.w,
                    height: 12.h,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.w,
                    ),
                  )
                      : icon ?? CommonText(text: text, size: fontSize, fontWeight: fontWeight, color: textColor)),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: isLoading ? Colors.transparent: backColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius.w),
                ),
              ),
            ),
            disabled ? Container(color: Colors.white.withOpacity(0.5)) : Container(),
            isLoading
                ? Container(
              color: Colors.transparent,
            )
                : Container(),
          ],
        ),
      ),
    );
  }
}
