import 'package:drift/drift.dart';

class UsersListDb extends Table {
  TextColumn get userId => text()();

  IntColumn get order => integer()();

  IntColumn get page => integer()();

  @override
  Set<Column> get primaryKey => {userId};
}
