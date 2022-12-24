import 'package:chat/common/widgets/base/base_page.dart';
import 'package:chat/common/widgets/base/base_page_state.dart';
import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/common/widgets/no_something_widget.dart';
import 'package:chat/common/widgets/round_cached_image.dart';
import 'package:chat/common/widgets/round_photo.dart';
import 'package:chat/constants/app_constants.dart';
import 'package:chat/constants/new_constants.dart';
import 'package:chat/routes/app_pages.dart';
import 'package:chat/sections/main/feed/controllers/feed_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends BasePageState<FeedScreen> {
  final FeedController feedController = Get.find();

  void initState() {
    super.initState();
    feedController.isLoading.listen((value) {
      controller.isLoading.value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
        controller: controller,
        builder: (context) {
          // return Scaffold(
          //   appBar: AppBar(
          //     backgroundColor: Colors.white,
          //     leading: IconButton(onPressed: (){
          //     }, icon: Icon(Icons.search, color: Colors.black, size: 20.w,)),
          //     actions: [
          //       GestureDetector(onTap: (){Get.toNamed(Routes.PROFILE);}, child: Padding(padding: EdgeInsets.only(right: 10.w), child: AppAssets.userIcon2(color: Colors.black)))
          //     ],
          //   ),
          //   body: SafeArea(
          //     child:
          return Obx(
            () => feedController.entities.isEmpty
                ? Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 200.h),
                      child: NoSomethingWidget(
                          icon: AppAssets.heart_outlined(
                              color: Colors.pinkAccent, size: 60),
                          text: 'No orphanages in your location'),
                    ))
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 24.w,
                            ),
                            GestureDetector(
                                onTap: () {
                                  Get.toNamed(Routes.PROFILE);
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(right: 10.w),
                                    child: AppAssets.userIcon2(
                                        color: Colors.black)))
                          ],
                        ),
                      ),
                      feedController.country.value != ''
                          ? AppAssets.location(color: Colors.black)
                          : SizedBox(),
                      CommonText(
                        text: feedController.country.value,
                        size: 23,
                        fontWeight: FontWeight.w600,
                        top: 10,
                        bottom: 10,
                      ),
                      ...List.generate(
                          feedController.entities.length,
                          (index) => InkWell(
                            onTap: (){
                              Get.toNamed(Routes.FIRST, arguments: [
                                feedController.entities[index].id,
                                feedController.entities[index].name,
                                feedController.entities[index].location,
                                NewConstants.withoutApi + 'images/' + feedController.entities[index].image
                              ]);
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                              child: Row(
                                children: [
                                  RoundedCachedImage(
                                    imgUrl:
                                        NewConstants.withoutApi + 'images/' + feedController.entities[index].image,
                                    size: 70,
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CommonText(
                                        text: feedController
                                            .entities[index].name,
                                        size: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      CommonText(
                                        text: feedController.entities[index]
                                            .location.capitalize!,
                                        size: 18,
                                        top: 5,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
          );
        }
        //   ),
        // ); },
        );
  }
}
