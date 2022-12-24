import 'package:cached_network_image/cached_network_image.dart';
import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/constants/app_constants.dart';
import 'package:chat/constants/new_constants.dart';
import 'package:chat/general/carousel.dart';
import 'package:chat/general/decription_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../constants/resources/colors.dart';
import '../controllers/detail_controller.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DetailController detailController = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Obx(
                  () => Container(
                    color: Colors.white,
                    width: double.maxFinite,
                    height: 297.h,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          child: CachedNetworkImage(
                              imageUrl: NewConstants.withoutApi +
                                  'images/' +
                                  detailController.orphan.value.image[0].image,
                              imageBuilder: (context, imageProvider) {
                                return Container(
                                  width: Get.width,
                                  height: 298.h,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.cover)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                          height: 20.h,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(20),
                                                  topLeft: Radius.circular(20))))
                                    ],
                                  ),
                                );
                              }),
                        ),
                        Positioned(
                            left: 20,
                            top: 50,
                            child: GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                width: 40.w,
                                height: 40.w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: AppColors.lightGreyBorder),
                                    borderRadius: BorderRadius.circular(50.w)),
                                child: Center(
                                  child:
                                      AppAssets.arrow_back(color: Colors.black),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  width: Get.width,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CommonText(
                              text: detailController.orphan.value.lastName +
                                  ' ' +
                                  detailController.orphan.value.firstName,
                              size: 23,
                              fontWeight: FontWeight.w600,
                              center: true,
                            ),
                            SizedBox(height: 12.h,),
                            CommonText(
                              text: 'Birth date: ${detailController.orphan.value.birthday}',
                              size: 16,
                              fontWeight: FontWeight.w400,
                              center: true,
                            ),
                          ],
                        ),
                      ),
                      ReviewTextWidget(
                          mainText:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,",
                          proText:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,",
                          consText:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,"),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: CommonText(
                          text: 'Works',
                          size: 14,
                          lineHeight: 1.71,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      BannerCarousel(items: [1, 2, 3]),
                      SizedBox(
                        height: 20.h,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
