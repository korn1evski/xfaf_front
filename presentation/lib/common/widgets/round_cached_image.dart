import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:chat/constants/app_constants.dart';
import 'package:chat/constants/resources/colors.dart';

class RoundedCachedImage extends StatelessWidget {
  const RoundedCachedImage(
      {Key? key, required this.imgUrl, this.size = 40, this.isOnline = false})
      : super(key: key);
  final String imgUrl;
  final double size;
  final bool isOnline;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imgUrl,
      imageBuilder: (context, imageProvider) {
        return Stack(
          children: [
            Container(
                width: size.w,
                height: size.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(size),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ))),
            isOnline
                ? Positioned(
                    right: -1,
                    top: -2,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.backColor2,
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(2.w),
                      child: Container(
                        height: 10.w,
                        width: 10.w,
                        decoration: BoxDecoration(
                            color: AppColors.onlineColor,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  )
                : const SizedBox()
          ],
        );
      },
      placeholder: (context, url) => Container(
          width: size.w,
          height: size.w,
          child: Center(
              child: SizedBox(
                  width: 12.h,
                  height: 12.h,
                  child: CircularProgressIndicator(
                    color: AppColors.mainTextColor,
                    strokeWidth: 1,
                  )))),
      errorWidget: (context, url, error) => Stack(
        children: [
          Container(
            width: size.w,
            height: size.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(size),
                image: DecorationImage(
                    image: AssetImage(
                      'res/images/person.png',
                    ),
                    fit: BoxFit.cover)),
          ),
          const SizedBox()
        ],
      ),
    );
  }
}
