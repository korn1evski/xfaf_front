import 'package:chat/modules/main/group_info/controllers/group_info_controller.dart';
import 'package:domain/modules/chat/conversations/usecases/add_members_usecase.dart';
import 'package:domain/modules/chat/profile/entities/index.dart';
import 'package:domain/modules/chat_users/usecases/get_chat_users_usecase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../constants/resources/help_functions.dart';

class AddMembersController extends GetxController {
  Rx<bool> isLoading = false.obs;
  late RefreshController refreshController;
  late TextEditingController searchController;
  final GetChatUsersUseCase getChatUsersUseCase;
  final AddMembersUseCase addMembersUseCase;
  final GroupInfoController groupInfoController = Get.find();
  Rx<String> inputValue = ''.obs;
  RxList<ProfileEntity> usersList = RxList();
  int page = 1;
  Rx<bool> nextIsLoading = false.obs;
  RxList<String> selectedUsersId = RxList();
  late List<ProfileEntity> members;

  AddMembersController({required this.getChatUsersUseCase, required this.addMembersUseCase});

  Future<void> search(String value) async{
    refreshController.resetNoData();
    page = 1;
    setIsLoading(isLoading);
    final result =  await getChatUsersUseCase.call(ChatUsersParams(page: 1, search: value.toString()));
    result.fold((l){
      print('Search error');
    }, (r){
      usersList.value = r;
     members.forEach((member) {
       usersList.removeWhere((element) => element.id == member.id);
     });
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
        members.forEach((member) {
          usersList.removeWhere((element) => element.id == member.id);
        });
        usersList.refresh();
      }
    });
  }

  Future<void> addMembers() async{
    final response = await addMembersUseCase.call(AddMembersParams(membersId: selectedUsersId, conversationId: groupInfoController.conversationEntity.id));
    response.fold((l) => print('adding members error'), (r) async{
      await groupInfoController.getRoomMembers();
      Get.back();
    });
  }

  @override
  onInit() async{
    super.onInit();
    members= Get.arguments[0].value;
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