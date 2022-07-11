import 'package:drift/drift.dart';

class CurrentUserDB extends Table {
  TextColumn get userId => text()();

  TextColumn get email => text()();

  TextColumn get firstName => text()();

  TextColumn get lastName => text()();

  TextColumn get picture => text().nullable()();

  @override
  Set<Column> get primaryKey => {userId};
}
