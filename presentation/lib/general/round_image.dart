import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_constants.dart';
import '../constants/resources/colors.dart';

class RoundedCachedImage extends StatelessWidget {
  const RoundedCachedImage({Key? key, required this.imgUrl, this.size = 48, this.withPlus = false}) : super(key: key);
  final String imgUrl;
  final double size;
  final bool withPlus;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imgUrl,
      imageBuilder: (context, imageProvider) {
        return Stack(
          children: [
            Container(
              width: size.w,
              height: size.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size),
                  image: DecorationImage(image: AssetImage('res/place_holders/person_holder.jpg',),fit: BoxFit.cover)),
            ),
            withPlus ? Positioned(bottom: 1, right: 3, child: Container(
              width: 20.h,
              height: 20.h,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: AppColors.grey400),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: AppAssets.addIcon(color: AppColors.grey400),
              ),
            )) : const SizedBox()
          ],
        );
      },
      placeholder: (context, url) => Container(width: 12.h, height: 12.h, child: CircularProgressIndicator(color: AppColors.backColor, strokeWidth: 1,)),
      errorWidget: (context, url, error) => Stack(
        children: [
          Container(
            width: size.h,
            height: size.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(size),
                image: DecorationImage(image: AssetImage('res/place_holders/person_holder.jpg',),fit: BoxFit.cover)),
          ),
          withPlus ? Positioned(bottom: 1, right: 3, child: Container(
            width: 20.h,
            height: 20.h,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: AppColors.grey400),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: AppAssets.addIcon(color: AppColors.grey400),
            ),
          )) : const SizedBox()
        ],
      ),
    );
  }
}
