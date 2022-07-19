import 'dart:io';

import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RoundPhoto extends StatelessWidget {
  const RoundPhoto({Key? key, required this.image, this.pickImage,})
      : super(key: key);

  final File? image;
  final Future<void> Function(bool)? pickImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        clipRect(image, context, pickImage),
        Positioned(
            bottom: 0,
            right: 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.lightBlueAccent,
              ),
              width: 20.w,
              height: 20.w,
              child: Icon(
                Icons.edit,
                size: 12.w,
                color: Colors.white,
              ),
            ))
      ],
    );
  }
}

Widget clipRect(File? image, BuildContext context, Future<void> Function(bool)? pickImage) {
  Future<dynamic> onTap() {
    if (Platform.isIOS) {
      return showCupertinoDialog(
          context: context,
          barrierDismissible: true,
          builder: (context) => Center(
            child: CupertinoActionSheet(
              actions: [
                CupertinoActionSheetAction(
                  child: Text('Camera'),
                  onPressed: () async{
                    if(pickImage != null){
                      await pickImage(true);
                    }
                  },
                ),
                CupertinoActionSheetAction(
                  child: Text('Gallery'),
                  onPressed: () async{
                    if(pickImage != null){
                      await pickImage(false);
                    }
                  },
                ),
              ],
            ),
          ));
    } else {
      return showModalBottomSheet(
          context: context,
          builder: (context) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                  leading: Icon(Icons.camera_alt),
                  title: Text('Camera'),
                  onTap: () async{
                    if(pickImage != null) {
                      await pickImage(true);
                    }
                  }),
              ListTile(
                  leading: Icon(Icons.image),
                  title: Text('Gallery'),
                  onTap: () async{
                    if(pickImage != null) {
                      await pickImage(false);
                    }
                  })
            ],
          ));
    }
  }

  if (image == null) {
    return Ink(
        width: 100.w,
        height: 100.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: InkWell(
          child: ClipOval(
            child: FlutterLogo(
              size: 80.w,
            ),
          ),
          onTap: () {
            onTap();
          },
          customBorder: CircleBorder(),
        ));
  } else {
    return Ink(
        width: 100.w,
        height: 100.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: InkWell(
          child: ClipOval(
            child: Image.file(
              image,
              fit: BoxFit.cover,
            ),
          ),
          onTap: () {
            onTap();
          },
          customBorder: CircleBorder(),
        ));
  }
}
