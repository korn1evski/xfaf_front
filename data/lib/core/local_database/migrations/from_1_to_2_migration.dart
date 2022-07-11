import 'package:data/core/local_database/moor_database.dart';
import 'package:drift/drift.dart';

class From1To2Migration {
  Future<void> createTables(LocalCacheDatabase db, Migrator migrator) async {
    try {
      await migrator.alterTable(TableMigration(db.currentUserDB, columnTransformer: {
        db.currentUserDB.userId: db.currentUserDB.userId.cast<String>(),
      }));
    } catch (e) {

    }
  }
}
