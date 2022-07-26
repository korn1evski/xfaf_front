import 'package:chat/modules/main/add_members/bindings/add_members_binding.dart';
import 'package:chat/modules/main/add_members/views/add_members_screen.dart';
import 'package:chat/modules/main/group_info/bindings/group_info_binding.dart';
import 'package:chat/modules/main/group_info/views/group_info_screen.dart';
import 'package:chat/modules/main/new_group/group_initial_settings/bindings/group_initial_settings_binding.dart';
import 'package:chat/modules/main/new_group/group_initial_settings/views/group_initial_settings_screen.dart';
import 'package:chat/modules/main/new_group/group_members/bindings/group_members_binding.dart';
import 'package:chat/modules/main/new_group/group_members/views/group_members_screen.dart';
import 'package:get/get.dart';
import 'package:chat/modules/authentication/login/bindings/login_binding.dart';
import 'package:chat/modules/authentication/login/views/login_page.dart';
import 'package:chat/modules/main/chat_room/bindings/chat_room_binding.dart';
import 'package:chat/modules/main/chat_room/controllers/chat_room_controller.dart';
import 'package:chat/modules/main/chat_room/views/chat_room_screen.dart';
import 'package:chat/modules/main/mentions/views/mentions_page.dart';
import 'package:chat/modules/main/menu/bindings/menu_binding.dart';
import 'package:chat/modules/main/menu/views/menu_page.dart';
import 'package:chat/modules/main/new_conversation/bindings/new_conversation_binding.dart';
import 'package:chat/modules/main/new_conversation/views/new_conversation_screen.dart';

import '../modules/main/conversations/views/chats_page.dart';
import '../modules/root/views/root_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const LOGIN = Routes.LOGIN;
  static const MENU = Routes.MENU;
  static const MENTIONS = Routes.MENTIONS;
  static const CHATS = Routes.CHATS;
  static const ROOM = Routes.ROOM;
  static const NEWCONVERSATION = Routes.NEWCONVERSATION;
  static const GROUPMEMBERS = Routes.GROUPMEMBERS;
  static const ADDMEMBERS = Routes.ADDMEMBERS;
  static final routes = [
    GetPage(
      name: '/',
      page: () => const RootPage(),
      preventDuplicates: true,
      children: [
        GetPage(name: _Paths.LOGIN, page: () => LoginPage(), bindings: [LoginBinding()]),
        GetPage(name: _Paths.MENU, page: () => MenuPage(), bindings: [MenuBinding()]),
        GetPage(name: _Paths.CHATS, page: () => const ChatsPage(), bindings: []),
        GetPage(name: _Paths.MENTIONS, page: () => const MentionsPage(), bindings: []),
        GetPage(name: _Paths.ROOM, page: () => ChatRoomScreen(), bindings: [ChatRoomBinding()]),
        GetPage(name: _Paths.NEWCONVERSATION, page: () => NewConversationScreen(), bindings: [NewConversationBinding()]),
        GetPage(name: _Paths.GROUPINITIALSETTINGS, page: () => GroupInitialSettingsScreen(), bindings: [GroupInitialSettingsBinding()]),
        GetPage(name: _Paths.GROUPMEMBERS, page: () => GroupMembersScreen(), bindings: [GroupMembersBinding()]),
        GetPage(name: _Paths.GROUPINFO, page: () => GroupInfoScreen(), bindings: [GroupInfoBinding()]),
        GetPage(name: _Paths.ADDMEMBERS, page: () => AddMembersScreen(), bindings: [AddMembersBinding()])
      ],
    ),
  ];
}
