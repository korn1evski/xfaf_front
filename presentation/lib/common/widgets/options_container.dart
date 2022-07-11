import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/constants/resources/colors.dart';

import '../../constants/app_constants.dart';

class OptionsContainer extends StatelessWidget {
  const OptionsContainer({Key? key, required this.map}) : super(key: key);
  final Map<String, Function()> map;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
        Radius.circular(20.0),
    )),
      color: Colors.white,
      padding: EdgeInsets.zero,
        iconSize: 20.w,
        itemBuilder: (context) =>
        [
          ...List.generate(map.length, (index) =>
              PopupMenuItem(onTap: map.values.toList()[index], value: index + 1, child: CommonText(
                text: map.keys.toList()[index], size: 16, color: Colors.black,)))
        ],
        icon: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          height: 40.w,
          width: 40.w,
          child: Center(
            child: AppAssets.writeIcon(color: AppColors.mainBlue),
          ),
        ),
    );
  }
}
