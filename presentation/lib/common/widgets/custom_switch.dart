import 'package:chat/constants/resources/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({Key? key, this.width = 32, this.height = 20, required this.color, this.onSwitch, this.switchVal = false}) : super(key: key);
  final double width;
  final double height;
  final Color color;
  final Function()? onSwitch;
  final bool switchVal;

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    bool switchValue = widget.switchVal;
    return SizedBox(
        width: widget.width.w,
        height: widget.height.h,
        child: Transform.scale(
          transformHitTests: false,
          scale: 0.7,
          child: CupertinoSwitch(
            value: switchValue,
            onChanged: (bool value) {
              setState(() => switchValue = value);
              if(widget.onSwitch != null){
                widget.onSwitch!();
              }
            },
            activeColor: widget.color,
          ),
        ));
  }
}
