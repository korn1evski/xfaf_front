import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/constants/resources/colors.dart';

import '../../../../constants/app_constants.dart';

class DateCard extends StatelessWidget {
  const DateCard({Key? key, required this.date}) : super(key: key);
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Center(
        child: Card(
          color: AppColors.mainBlue,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: CommonText(text: DateFormat.yMMMd().format(date), size: 12, color: Colors.white,),
          ),
        ),
      ),
    );
  }
}
