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
}