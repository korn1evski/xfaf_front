import 'package:cached_network_image/cached_network_image.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import 'base/base_page.dart';
import 'custom_app_bar.dart';

class GalleryWidget extends StatefulWidget {
  const GalleryWidget({Key? key, required this.urlImages, required this.index})
      : super(key: key);
  final List<String> urlImages;
  final int index;

  @override
  State<GalleryWidget> createState() => _GalleryWidgetState();
}

class _GalleryWidgetState extends State<GalleryWidget>
    with TickerProviderStateMixin {
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

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget.index);
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

  bool showAppBar = true;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      builder: (context) {
        return Scaffold(
            backgroundColor: AppColors.backColor,
            body: SafeArea(
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      setShowAppBar();
                    },
                    child: InteractiveViewer(
                      transformationController: transformationController,
                      clipBehavior: Clip.none,
                      onInteractionStart: (details) {
                        showAppBar ? setShowAppBar() : null;
                      },
                      onInteractionEnd: (details) {
                        resetAnimation();
                      },
                      child: PhotoViewGallery.builder(
                          backgroundDecoration:
                              BoxDecoration(color: AppColors.backColor),
                          pageController: pageController,
                          itemCount: widget.urlImages.length,
                          builder: (context, index) {
                            final urlImage = widget.urlImages[index];
                            return PhotoViewGalleryPageOptions(
                              disableGestures: true,
                              imageProvider:
                                  CachedNetworkImageProvider(urlImage),
                            );
                          }),
                    ),
                  ),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    child: showAppBar
                        ? const CustomAppBar(
                            text: 'View photo',
                            withBackArrow: true,
                          )
                        : const SizedBox(),
                  )
                ],
              ),
            ));
      },
    );
  }
}
