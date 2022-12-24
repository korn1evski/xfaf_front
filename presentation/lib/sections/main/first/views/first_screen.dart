import 'package:cached_network_image/cached_network_image.dart';
import 'package:chat/common/widgets/base/base_page_state.dart';
import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/constants/new_constants.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:chat/routes/app_pages.dart';
import 'package:chat/sections/main/first/controllers/first_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/base/base_page.dart';
import '../../../../constants/app_constants.dart';
import '../../../../general/no_something_widget.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends BasePageState<FirstScreen> {
  final FirstController firstController = Get.find();

  void initState() {
    super.initState();
    firstController.isLoading.listen((value) {
      controller.isLoading.value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
        controller: controller,
        builder: (context) {
          return SingleChildScrollView(
            child: Obx(
              () => Column(
                children: [
                  Stack(
                    children: [
                      CachedNetworkImage(
                        imageUrl: firstController.mainPhoto.value,
                        imageBuilder: (context, imageProvider) {
                          return Container(
                            width: double.maxFinite,
                            height: 300.h,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 5.0,
                                      offset: Offset(0.0, 0.75))
                                ],
                                image: DecorationImage(
                                    image: imageProvider, fit: BoxFit.cover)),
                            child: Container(
                              height: 20.h,
                              width: double.maxFinite,
                              color: Color.fromARGB(30, 0, 0, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CommonText(
                                    text: firstController.name.value,
                                    size: 33,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  CommonText(
                                    text: firstController.street.value.capitalize!,
                                    size: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      Positioned(
                          left: 20,
                          top: 20,
                          child: Container(
                            width: 40.w,
                            height: 40.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: AppColors.lightGreyBorder),
                                borderRadius: BorderRadius.circular(50.w)),
                            child: Center(
                              child: GestureDetector(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: AppAssets.arrow_back(
                                      color: Colors.black)),
                            ),
                          )),
                    ],
                  ),
                  SafeArea(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 15.h,
                        ),
                        firstController.entities.isEmpty ? NoSomethingWidget(icon: AppAssets.heart_outlined(color: Colors.pink), mainText: 'No information', secondaryText: 'about children',) : SizedBox(),
                        ...List.generate(
                          firstController.entities.length,
                          (index) => GestureDetector(
                            onTap: (){
                              Get.toNamed(Routes.DETAILS, arguments: [firstController.entities[index]]);
                            },
                            child: Container(
                              margin: EdgeInsets.only(bottom: 15.h),
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.w),
                                  border: Border.all(
                                      color: AppColors.lightGreyBorder)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CachedNetworkImage(
                                      imageUrl: NewConstants.withoutApi + 'images/'+
                                          firstController
                                              .entities[index].image[0].image,
                                      imageBuilder: (context, imageProvider) {
                                        return Container(
                                          width: double.maxFinite,
                                          height: 200.h,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight: Radius.circular(20)),
                                              image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover)),
                                        );
                                      }),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.h),
                                      child: CommonText(
                                        text: firstController
                                                .entities[index].lastName +
                                            ' ' +
                                            firstController
                                                .entities[index].firstName,
                                        size: 20,
                                      ))
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ),
          );
        });
  }
}
