import 'dart:ui';

import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:chat/modules/main/chat_room/bindings/file_preview_binding.dart';
import 'package:chat/modules/main/chat_room/controllers/file_preview_controller.dart';
import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/custom_circular_indicator.dart';

class FilePreview extends StatefulWidget {
  const FilePreview(
      {Key? key,
      required this.pictureEntity})
      : super(key: key);
  final PictureEntity pictureEntity;

  @override
  State<FilePreview> createState() => _FilePreviewState();
}

class _FilePreviewState extends State<FilePreview> {
  late FilePreviewController filePreviewController;

  @override
  void initState() {
    super.initState();
    FilePreviewBinding().dependencies(widget.pictureEntity);
    filePreviewController = Get.find(tag: widget.pictureEntity.id);
  }

  @override
  Widget build(BuildContext context) {
    final kb = widget.pictureEntity.size / 1024;
    final mb = kb / 1024;
    final fileSize =
        mb > 1 ? "${mb.toStringAsFixed(2)} MB" : "${kb.toStringAsFixed(2)} KB";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Obx(
            () => GestureDetector(
              onTap: filePreviewController.fileOnTap,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                      color: AppColors.mainBlue.withAlpha(
                          filePreviewController.isDownloaded.value ? 255 : 100),
                      borderRadius: BorderRadius.circular(16.w)),
                  child: Center(
                    child: filePreviewController.isDownloading.value ? const CustomCircularIndicator(color: Colors.white) : CommonText(
                      text: widget.pictureEntity.extension,
                      size: 18.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: CommonText(
            text: widget.pictureEntity.name,
            size: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.mainTextColor,
            numberOfLines: 1,
            isEllipsis: true,
          ),
        ),
        CommonText(
          text: fileSize,
          size: 12,
          color: AppColors.mainTextColor,
        )
      ],
    );
  }
}
