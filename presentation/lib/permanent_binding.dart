import 'package:domain/modules/current_user_session/usecases/get_current_user_session_use_case.dart';
import 'package:domain/modules/current_user_session/usecases/remove_current_user_session_use_case.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:chat/modules/root/controllers/root_controller.dart';
import 'controllers/internet_connection_controller.dart';

class PermanentBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    await Get.putAsync<InternetConnectionController>(() async {
      return InternetConnectionController();
    }, permanent: true);
    await Get.putAsync<RootController>(() async {
      return RootController(GetIt.instance.get<GetCurrentUserSessionUseCase>(), removeCurrentUserSessionUseCase: GetIt.instance.get<RemoveCurrentUserSessionUseCase>());
    }, permanent: true);
  }
}
