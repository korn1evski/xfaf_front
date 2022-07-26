import 'package:chat/constants/app_constants.dart';
import 'package:chat/constants/resources/help_functions.dart';
import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:domain/modules/chat/profile/entities/index.dart';
import 'package:domain/modules/chat/room/usecases/delete_room_member_usecase.dart';
import 'package:domain/modules/chat/room/usecases/get_room_members_usecase.dart';
import 'package:get/get.dart' hide Trans;

import '../../../../generated/locale_keys.loc.dart';

class GroupInfoController extends GetxController {
  final GetRoomMembersUseCase getRoomMembersUseCase;
  final DeleteRoomMemberUseCase deleteRoomMemberUseCase;
  late ConversationEntity conversationEntity;
  RxList<ProfileEntity> members = RxList();
  Rx<bool> isLoading = false.obs;

  GroupInfoController(
      {required this.getRoomMembersUseCase,
      required this.deleteRoomMemberUseCase});

  Future<void> deleteMember(String memberId) async {
    showAreYouSure(
        'Delete member', LocaleKeys.areYouSureDeletingThisMember.tr(),
        () async {
      final response = await deleteRoomMemberUseCase(DeleteMemberParams(
          memberId: memberId, conversationId: conversationEntity.id));
      response.fold((l) => print('Error deleting a member'), (r){
        members.removeWhere((element) => element.id == memberId);
        members.refresh();
      });

      Get.back();
    });
  }

  Future<void> getRoomMembers() async{
    setIsLoading(isLoading);
    final response = await getRoomMembersUseCase.call(conversationEntity.id);
    response.fold((l) => print('Getting room members error'), (r) {
      members.value = r;
      members.refresh();
    });
    setIsLoading(isLoading);
  }

  @override
  void onInit() async {
    super.onInit();
    conversationEntity = Get.arguments[0];
    await getRoomMembers();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
