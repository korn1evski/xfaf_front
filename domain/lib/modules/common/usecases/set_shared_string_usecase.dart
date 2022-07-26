import 'package:domain/modules/common/repository/shared_pref_repository.dart';

class SetSharedStringUseCase {
  final SharedPrefRepository sharedPrefRepository;

  SetSharedStringUseCase({required this.sharedPrefRepository});

  Future<void> call(String key, String value) async{
    return await sharedPrefRepository.setSharedString(key, value);
  }
}