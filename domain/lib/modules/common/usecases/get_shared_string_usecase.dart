import 'package:domain/modules/common/repository/shared_pref_repository.dart';

class GetSharedStringUseCase {
  final SharedPrefRepository sharedPrefRepository;

  GetSharedStringUseCase({required this.sharedPrefRepository});

  String? call(String key){
    return sharedPrefRepository.getSharedString(key);
  }
}