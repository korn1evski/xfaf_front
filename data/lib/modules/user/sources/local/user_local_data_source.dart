import 'package:data/core/local_database/moor_database.dart';
import 'package:data/modules/user/models/database/users_list_db.dart';
import 'package:drift/drift.dart';

abstract class UserLocalDataSource {
  Stream<List<UserDbData>> getUsers(int offset, int limit);

  Future<void> insertUsers(List<UserDbData> users);

  Future<void> insertUsersList(List<UsersListDbData> users);
}

class UserLocalDataSourceImpl implements UserLocalDataSource {
  LocalCacheDatabase database;

  UserLocalDataSourceImpl(this.database);

  @override
  Future<void> insertUsers(List<UserDbData> users) async {
    await database.batch((batch) {
      batch.insertAll(database.userDb, users, mode: InsertMode.insertOrReplace);
    });
  }

  @override
  Stream<List<UserDbData>> getUsers(int offset, int limit) {
    var query = database.select(database.usersListDb)..limit(limit,offset: offset);
    query.orderBy([
      (UsersListDb pc) => OrderingTerm(expression: pc.page, mode: OrderingMode.asc),
      (UsersListDb pc) => OrderingTerm(expression: pc.order, mode: OrderingMode.asc),
    ]);

    return query
        .join([
          leftOuterJoin(database.userDb, database.userDb.id.equalsExp(database.usersListDb.userId)),
        ])
        .watch()
        .map((rows) {
          List<UserDbData> users = [];
          for (var row in rows) {
            UserDbData? userDBModelData = row.readTableOrNull(database.userDb);

            if (userDBModelData != null) {
              users.add(userDBModelData);
            }
          }
          return users;
        });
  }

  @override
  Future<void> insertUsersList(List<UsersListDbData> users) async {
    await database.batch((batch) {
      batch.insertAll(database.usersListDb, users, mode: InsertMode.insertOrReplace);
    });
  }
}
