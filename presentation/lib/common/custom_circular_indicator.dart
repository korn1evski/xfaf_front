import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCircularIndicator extends StatelessWidget {
  const CustomCircularIndicator(
      {Key? key, this.width = 2, this.size = 15, required this.color})
      : super(key: key);
  final double width;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: size.w,
      height: size.w,
      child: CircularProgressIndicator(color: color, strokeWidth: width.w,),);
  }
}
