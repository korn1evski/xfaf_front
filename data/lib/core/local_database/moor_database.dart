import 'dart:io';

import 'package:data/core/local_database/migrations/from_1_to_2_migration.dart';
import 'package:data/modules/current_user_session/models/database/current_user_db.dart';
import 'package:data/modules/user/models/database/user_db.dart';
import 'package:data/modules/user/models/database/users_list_db.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'moor_database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'local_db.sqlite'));
    return NativeDatabase(
      file,
      logStatements: true,
    );
  });
}

@DriftDatabase(tables: [
  UserDb,
  UsersListDb,
  CurrentUserDB,
])
class LocalCacheDatabase extends _$LocalCacheDatabase {
  LocalCacheDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) {
        return m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        print('LocalCacheDatabase onUpgrade from $from to $to');
        if (from < 2) {
          await From1To2Migration().createTables(this, m);
        }
      },
      beforeOpen: (details) async {
        print('LocalCacheDatabase beforeOpen');
        print('LocalCacheDatabase wasCreated from: ${details.versionBefore} to : ${details.versionNow}');
      },
    );
  }

  void clearData() async {
    delete(userDb).go();
    delete(usersListDb).go();
  }
}
