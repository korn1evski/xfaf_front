import 'package:chat/modules/main/conversations/controllers/chats_controller.dart';
import 'package:chat/routes/app_pages.dart';
import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:domain/modules/chat/conversations/usecases/create_group_conversation_usecase.dart';
import 'package:domain/modules/chat/profile/entities/index.dart';
import 'package:domain/modules/chat_users/usecases/get_chat_users_usecase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../../constants/resources/help_functions.dart';

class GroupMembersController extends GetxController {
  late RefreshController refreshController;
  late dynamic arguments;
  late PictureEntity? pictureEntity;
  late String groupName;
  late String currentUserId;
  late TextEditingController searchController;
  final GetChatUsersUseCase getChatUsersUseCase;
  final CreateGroupConversationUseCase createGroupConversationUseCase;
  Rx<String> inputValue = ''.obs;
  RxList<ProfileEntity> usersList = RxList();
  int page = 1;
  Rx<bool> isLoading = false.obs;
  Rx<bool> nextIsLoading = false.obs;
  RxList<String> selectedUsersId = RxList();

  GroupMembersController({required this.getChatUsersUseCase, required this.createGroupConversationUseCase});

  Future<void> search(String value) async{
    refreshController.resetNoData();
    page = 1;
    setIsLoading(isLoading);
    final result =  await getChatUsersUseCase.call(ChatUsersParams(page: 1, search: value.toString()));
    result.fold((l){
      print('Search error');
    }, (r){
      usersList.value = r;
      usersList.removeWhere((element) => element.id == currentUserId);
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
        usersList.removeWhere((element) => element.id == currentUserId);
        usersList.refresh();
      }
    });
  }

  Future<void> createGroup() async{
    setIsLoading(nextIsLoading);
    final result = await createGroupConversationUseCase.call(CreateGroupConversationParams(name: groupName, members: selectedUsersId, picture: pictureEntity?.id));
    result.fold((l) => print('Create group error'), (r){
      final conversationEntity = r;
    });
    await Get.find<ChatsController>().getConversations();
    Get.find<ChatsController>().currentPage = 1;
    setIsLoading(nextIsLoading);
    Get.offAllNamed(Routes.MENU);
  }

  @override
  onInit() async{
    super.onInit();
    arguments = Get.arguments;
    pictureEntity =  arguments[0]['pictureEntity'];
    groupName = arguments[1]['groupName'];
    currentUserId = Get.find<ChatsController>().currentUserEntity!.id;
    // selectedUsersId.add(currentUserId);
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