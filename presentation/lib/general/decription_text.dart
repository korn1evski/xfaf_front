import 'package:chat/constants/resources/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart' hide Trans;

import '../common/widgets/common_text.dart';

class ReviewTextWidget extends StatefulWidget {
  const ReviewTextWidget({Key? key, required this.mainText, required this.proText, required this.consText})
      : super(key: key);
  final String mainText;
  final String proText;
  final String consText;

  @override
  State<ReviewTextWidget> createState() => _ReviewTextWidgetState();
}

class _ReviewTextWidgetState extends State<ReviewTextWidget> with SingleTickerProviderStateMixin {
  bool readMore = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      curve: Curves.fastOutSlowIn,
      duration: const Duration(seconds: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 24.h,
          ),
          CommonText(
            text: 'Child\'s story',
            size: 14,
            lineHeight: 1.71,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          SizedBox(
            height: 4.h,
          ),
          CommonText(
            text: widget.mainText,
            size: 14,
            lineHeight: 1.42,
            numberOfLines: readMore ? 100 : 2,
            isEllipsis: !readMore,
          ),
          SizedBox(
            height: 16.h,
          ),
          CommonText(
            text: 'Talents',
            size: 14,
            lineHeight: 1.71,
            fontWeight: FontWeight.w600,
            color:  Colors.black,
          ),
          SizedBox(
            height: 4.h,
          ),
          CommonText(
            text: widget.mainText,
            size: 14,
            lineHeight: 1.42,
            numberOfLines: readMore ? 100 : 2,
            isEllipsis: !readMore,
          ),
          SizedBox(
            height: 16.h,
          ),
          CommonText(
            text: 'Child\'s needs',
            size: 14,
            lineHeight: 1.71,
            fontWeight: FontWeight.w600,
            color:  Colors.black,
          ),
          SizedBox(
            height: 4.h,
          ),
          CommonText(
            text: widget.mainText,
            size: 14,
            lineHeight: 1.42,
            numberOfLines: readMore ? 100 : 2,
            isEllipsis: !readMore,
          ),
          SizedBox(
            height: 12.h,
          ),
          Padding(
              padding: EdgeInsets.only(left: 12.w),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    readMore = !readMore;
                  });
                },
                child: CommonText(
                  text: !readMore ? 'Read More' : 'Read less',
                  size: 14,
                  color:  Colors.black,
                  lineHeight: 1.71,
                ),
              ))
        ],
      ),
    );
  }
}
