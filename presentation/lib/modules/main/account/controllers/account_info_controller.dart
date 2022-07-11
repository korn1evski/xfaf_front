import 'package:domain/modules/current_user_session/entities/index.dart';
import 'package:domain/modules/current_user_session/usecases/get_current_user_session_use_case.dart';
import 'package:get/get.dart';
import 'package:chat/constants/resources/help_functions.dart';

class AccountInfoController extends GetxController {
  Rx<bool> isLoading = false.obs;
  CurrentUserEntity? currentUserEntity;

  final GetCurrentUserSessionUseCase getCurrentUserSessionUseCase;

  AccountInfoController({required this.getCurrentUserSessionUseCase});


  Future<void> initialLoading() async {
    setIsLoading(isLoading);
    var response = await getCurrentUserSessionUseCase.call();
    response.fold((l) {}, (r) => currentUserEntity = r);
    print(currentUserEntity);
    setIsLoading(isLoading);
  }

  void onInit() async{
    super.onInit();
    await initialLoading();
  }
}