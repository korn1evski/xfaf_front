import 'package:cached_network_image/cached_network_image.dart';
import 'package:chat/common/widgets/custom_app_bar.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OpenPhotoWidget extends StatefulWidget {
  const OpenPhotoWidget({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  State<OpenPhotoWidget> createState() => _OpenPhotoWidgetState();
}

class _OpenPhotoWidgetState extends State<OpenPhotoWidget>
    with SingleTickerProviderStateMixin {
  late TransformationController transformationController;
  late AnimationController animationController;

  Animation<Matrix4>? animation;

  void resetAnimation() {
    animation = Matrix4Tween(
            begin: transformationController.value, end: Matrix4.identity())
        .animate(CurvedAnimation(
            parent: animationController, curve: Curves.easeOut));
    animationController.forward(from: 0);
  }

  @override
  initState() {
    super.initState();
    transformationController = TransformationController();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200))
      ..addListener(() {
        transformationController.value = animation!.value;
      });
  }

  void setShowAppBar() {
    setState(() {
      showAppBar = !showAppBar;
    });
  }

  @override
  dispose() {
    super.dispose();
    transformationController.dispose();
    animationController.dispose();
  }

  bool showAppBar = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backColor,
        body: Stack(
          children: [
            Hero(
                tag: widget.url,
                child: GestureDetector(
                    onTap: () {
                      setShowAppBar();
                    },
                    child: Center(
                        child: InteractiveViewer(
                            transformationController: transformationController,
                            clipBehavior: Clip.none,
                            onInteractionStart: (details) {
                              showAppBar ? setShowAppBar() : null;
                            },
                            onInteractionEnd: (details) {
                              resetAnimation();
                            },
                            child: CachedNetworkImage(
                              imageUrl: widget.url,
                              placeholder: (context, url) => SizedBox(
                                  width: 20.w,
                                  height: 20.w,
                                  child: Center(
                                    child: CircularProgressIndicator(
                                        color: AppColors.mainTextColor,
                                        strokeWidth: 2.w),
                                  )),
                            ))))),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: showAppBar
                  ? const CustomAppBar(
                      text: 'View photo',
                      withBackArrow: true,
                    )
                  : const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
