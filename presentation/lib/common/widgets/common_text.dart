import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final int numberOfLines;
  final bool center;
  final double lineHeight;
  final FontWeight fontWeight;
  final double bottom;
  final double left;
  final double right;
  final double top;
  final bool isEllipsis;

  const CommonText(
      {Key? key,
        required this.text,
        required this.size,
        this.fontWeight = FontWeight.w400,
        this.color = Colors.black,
        this.numberOfLines = 100,
        this.center = false,
        this.lineHeight = 1,
        this.bottom = 0,
        this.top = 0,
        this.left = 0,
        this.isEllipsis = false,
        this.right = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottom.h, top: top.h, left: left.w, right: right.w),
      child: Text(text,
          maxLines: numberOfLines,
          overflow: isEllipsis ? TextOverflow.ellipsis : null,
          textAlign: center ? TextAlign.center : TextAlign.start,
          style: TextStyle(
                fontSize: size.sp,
                color: color,
                height: lineHeight,
                fontWeight: fontWeight,
                overflow: TextOverflow.ellipsis),
          ),
    );
  }
}
