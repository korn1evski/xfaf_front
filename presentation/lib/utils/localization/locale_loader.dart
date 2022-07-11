import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class CustomAssetLoader extends AssetLoader {
  @override
  Future<Map<String, dynamic>> load(String path, Locale locale) async {
    Map<String, dynamic> jsonFallBack;
    var jsonText = await rootBundle.loadString('res/locales/en_us.json');
    jsonFallBack = jsonDecode(jsonText);

    final localizedValues = Map<String, dynamic>.fromEntries(
      jsonFallBack.keys.map(
        (String key) => MapEntry(key, jsonFallBack[key]),
      ),
    );

    return localizedValues;
  }
}
