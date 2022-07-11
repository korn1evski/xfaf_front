import 'package:data/core/local_database/moor_database.dart';
import 'package:domain/modules/current_user_session/entities/index.dart';
import 'package:drift/drift.dart';

class CurrentUserMapping {
  CurrentUserEntity mapDBtoEntity(CurrentUserDBData input) {
    return CurrentUserEntity(
        id: input.userId,
        email: input.email,
        firstName: input.firstName,
        lastName: input.lastName,
        picture: input.picture);
  }

  CurrentUserDBCompanion entityToCompanion(CurrentUserEntity input) {
    return CurrentUserDBCompanion(
        userId: Value(input.id),
        email: Value(input.email),
        firstName: Value(input.firstName),
        lastName: Value(input.lastName),
        picture: Value(input.picture));
  }
}
