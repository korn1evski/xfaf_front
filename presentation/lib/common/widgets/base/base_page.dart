import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:chat/common/widgets/internet_connection_view.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:chat/controllers/base_page_controller.dart';

class BasePage extends StatefulWidget {
  final WidgetBuilder builder;
  final PreferredSizeWidget? appBar;
  final bool? resizeToAvoidBottomInset;
  final BasePageController? controller;
  final double topPadding = 80;

  const BasePage({Key? key, required this.builder, this.appBar, this.resizeToAvoidBottomInset, this.controller})
      : super(key: key);

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    return  Obx(
      () => Scaffold(
            backgroundColor: AppColors.backColor,
            resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
            appBar: widget.appBar ?? PreferredSize(child: Container(), preferredSize: const Size(0, 0)),
            body: Column(
              children: [
                const InternetConnectionView(),
                Expanded(
                  child: Stack(
                    children: [
                      widget.builder(context),
                      widget.controller != null
                          ? Obx(() {
                        if (widget.controller != null) {
                          return widget.controller!.isLoading.value
                              ? Padding(
                            padding: EdgeInsets.only(top: widget.topPadding.h),
                            child: Container(
                              padding: EdgeInsets.only(bottom: widget.topPadding.h),
                              height: Get.size.height,
                              width: double.maxFinite,
                              decoration: const BoxDecoration(color: Colors.transparent),
                              child: Center(
                                child: CircularProgressIndicator(
                                  color: AppColors.blueWhiteBack
                                ),
                              ),
                            ),
                          )
                              : Container();
                        } else {
                          return Container();
                        }
                      })
                          : Container()
                    ],
                  ),
                ),
              ],
            ),
          ),
    );
  }
}


