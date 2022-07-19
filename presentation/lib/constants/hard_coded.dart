import 'package:domain/modules/chat/profile/entities/index.dart';
import 'package:domain/modules/current_user_session/entities/index.dart';

class HardCoded {
  static final currentUserEntityHard = CurrentUserEntity(id: '', email: '', firstName: '', lastName: '', picture: '');
  static final profileEntityHard = ProfileEntity(id: '', email: '', firstName: '', lastName: '', sso: '', keys: []);
}