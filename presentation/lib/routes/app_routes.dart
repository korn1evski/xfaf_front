// ignore_for_file: non_constant_identifier_names

part of 'app_pages.dart';
// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart

abstract class Routes {
  static const LOGIN = _Paths.LOGIN;
  static const MENU = _Paths.MENU;
  static const CHATS = _Paths.CHATS;
  static const MENTIONS = _Paths.MENTIONS;
  static const ROOM = _Paths.ROOM;
  static const NEWCONVERSATION = _Paths.NEWCONVERSATION;
  static const GROUPINITIALSETTINGS = _Paths.GROUPINITIALSETTINGS;
  static const GROUPMEMBERS = _Paths.GROUPMEMBERS;
  static const GROUPINFO = _Paths.GROUPINFO;
  static const ADDMEMBERS = _Paths.ADDMEMBERS;
  static const FEED = _Paths.FEED;
  static const FIRST = _Paths.FIRST;
  static const REGISTER = _Paths.REGISTER;
  static const DETAILS = _Paths.DETAILS;
  static const PROFILE = _Paths.PROFILE;
  static const ADDCHILD = _Paths.ADDCHILD;
  Routes._();
  static String LOGIN_THEN(String afterSuccessfulLogin) =>
      '$LOGIN?then=${Uri.encodeQueryComponent(afterSuccessfulLogin)}';
}

abstract class _Paths {
  static const LOGIN = '/login';
  static const MENU = '/menu';
  static const MENTIONS = '/mentions';
  static const CHATS = '/conversations';
  static const ROOM = '/room';
  static const NEWCONVERSATION = '/newConversation';
  static const GROUPINITIALSETTINGS = '/groupInitialSettings';
  static const GROUPMEMBERS = '/groupMembers';
  static const GROUPINFO = '/groupInfo';
  static const ADDMEMBERS = '/addMembers';
  static const FEED = '/feed';
  static const FIRST = '/first';
  static const REGISTER = '/register';
  static const DETAILS = '/details';
  static const PROFILE = '/profile';
  static const ADDCHILD = '/addChild';
}