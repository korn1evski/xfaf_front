import 'package:data/core/local_database/moor_database.dart';
import 'package:data/modules/user/models/index.dart';
import 'package:domain/modules/user/entities/index.dart';

class UserMapping {
  UserEntity mapApiToEntity(UserApiDto input) {
    return UserEntity(id: input.id, lastName: input.lastName, firstName: input.firstName, picture: input.picture);
  }

  UserEntity mapDbToEntity(UserDbData input) {
    return UserEntity(id: input.id, lastName: input.lastName, firstName: input.firstName, picture: input.picture);
  }

  UserDbData mapEntityToDb(UserEntity input) {
    return UserDbData(id: input.id, lastName: input.lastName, firstName: input.firstName, picture: input.picture);
  }
}
