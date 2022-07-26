import 'package:data/modules/common/sources/shared_pref_data_source.dart';
import 'package:domain/modules/common/repository/shared_pref_repository.dart';

import '../sources/files_data_source.dart';

class SharedPrefRepositoryImpl extends SharedPrefRepository {

  final SharedPrefDataSource sharedPrefDataSource;

  SharedPrefRepositoryImpl({required this.sharedPrefDataSource,});

  @override
  String? getSharedString(String key) {
    return sharedPrefDataSource.getSharedString(key);
  }

  @override
  Future<void> setSharedString(String key, String value) async{
    await sharedPrefDataSource.setSharedString(key, value);
  }

}