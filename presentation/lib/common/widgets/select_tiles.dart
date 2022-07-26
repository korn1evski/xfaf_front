import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<dynamic> selectTiles(
    BuildContext context, Map<String, Future<void> Function()?> map) {
  if (Platform.isIOS) {
    return showCupertinoDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) => Center(
              child: CupertinoActionSheet(
                actions: [
                  ...List.generate(
                    map.length,
                    (index) => CupertinoActionSheetAction(
                      child: Text(map.keys.toList()[index]),
                      onPressed: () async {
                        if (map.values.toList()[index] != null) {
                          await map.values.toList()[index]!();
                        }
                      },
                    ),
                  )
                ],
              ),
            ));
  } else {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...List.generate(
                    map.length,
                    (index) => ListTile(
                        title: Text(map.keys.toList()[index]),
                        onTap: () async {
                          if (map.values.toList()[index] != null) {
                            await map.values.toList()[index]!();
                          }
                        })),
              ],
            ));
  }
}
