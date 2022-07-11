import 'package:domain/modules/chat/conversations/usecases/start_private_conversation_usecase.dart';
import 'package:domain/modules/chat/profile/entities/index.dart';
import 'package:domain/modules/chat_users/usecases/get_chat_users_usecase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chat/constants/resources/help_functions.dart';
import 'package:chat/routes/app_pages.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class NewConversationController extends GetxController with StateMixin{
  late TextEditingController searchController;
  late RefreshController refreshController;
  RxString inputValue = ''.obs;
  final GetChatUsersUseCase getChatUsersUseCase;
  final StartPrivateConversationUseCase startPrivateConversationUseCase;
  NewConversationController({required this.getChatUsersUseCase, required this.startPrivateConversationUseCase});
  RxList<ProfileEntity> usersList = RxList();
  int page = 1;
  Rx<bool> isLoading = false.obs;

  Future<void> search(String value) async{
    refreshController.resetNoData();
    page = 1;
    setIsLoading(isLoading);
    final result =  await getChatUsersUseCase.call(ChatUsersParams(page: 1, search: value.toString()));
    result.fold((l){
      print('New private chat error');
    }, (r){
      usersList.value = r;
    });
    usersList.refresh();
    setIsLoading(isLoading);
  }

  Future<void> onLoading() async{
    page++;
    final result =  await getChatUsersUseCase.call(ChatUsersParams(page: page, search: inputValue.value,));
    result.fold((l){
      print('New private chat error');
    }, (r){
      if(r.isEmpty){
        refreshController.loadNoData();
      } else {
        usersList.addAll(r);
        refreshController.loadComplete();
        usersList.refresh();
      }
    });
  }

  Future<void> startPrivateConversation(ProfileEntity profile) async{
    final result = await startPrivateConversationUseCase.call(StartPrivateConversationParams(name: '${profile.firstName} ${profile.lastName} (${profile.email})', memberId: profile.id));
    result.fold((l) => print('Start private conversation error'), (r) => null);
    Get.offNamed(Routes.MENU);
  }

  @override
  onInit() async{
    super.onInit();
    searchController = TextEditingController();
    refreshController = RefreshController();
    await search('');
    debounce(inputValue, (value) async{
      await search(value.toString().trim());
    });
  }

  @override
  onClose(){
    super.onClose();
    searchController.dispose();
    refreshController.dispose();
  }
}