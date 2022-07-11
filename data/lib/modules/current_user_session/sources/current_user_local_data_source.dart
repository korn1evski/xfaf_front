import 'package:data/core/local_database/moor_database.dart';
import 'package:data/modules/current_user_session/mappers/current_user_mapping.dart';
import 'package:domain/modules/current_user_session/entities/index.dart';
import 'package:drift/drift.dart';

import '../models/database/current_user_db.dart';

abstract class CurrentUserLocalDataSource {
  Future<CurrentUserDBData?> getCurrentUser();
  Future<void> removeCurrentUser();
  Future<void> insertCurrentUser(CurrentUserEntity currentUserEntity);
}

class CurrentUserLocalDataSourceImpl implements CurrentUserLocalDataSource {
  LocalCacheDatabase db;

  CurrentUserLocalDataSourceImpl(this.db);

  @override
  Future<CurrentUserDBData?> getCurrentUser() async {
    var query = db.select(db.currentUserDB);
    var list = await query.get();
    return list.isNotEmpty ? list.first : null;
  }

  @override
  Future<void> removeCurrentUser() async {
    var query = db.select(db.currentUserDB);
    var list = await query.get();
    await db.batch((batch){
      batch.delete(db.currentUserDB, list.first);
    });
  }

  @override
  Future<void> insertCurrentUser(CurrentUserEntity currentUserEntity) async{
    try{
      await db.into(db.currentUserDB).insert(CurrentUserMapping().entityToCompanion(currentUserEntity));
    } catch(e){
      print('Error inserting the current user');
    }
  }
}
