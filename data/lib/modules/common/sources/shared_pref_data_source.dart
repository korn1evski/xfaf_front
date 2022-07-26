import 'package:data/modules/common/repository/shared_pref_repository_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPrefDataSource {
  String? getSharedString(String key);
  Future<void> setSharedString(String key, String value);
}

class SharedPrefDataSourceImpl implements SharedPrefDataSource {
  final SharedPreferences sharedPreferences;

  SharedPrefDataSourceImpl({required this.sharedPreferences});

  @override
  String? getSharedString(String key) {
    return sharedPreferences.getString(key);
  }

  @override
  Future<void> setSharedString(String key, String value) async{
    await sharedPreferences.setString(key, value);
  }

}