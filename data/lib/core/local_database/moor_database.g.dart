// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class UserDbData extends DataClass implements Insertable<UserDbData> {
  final String id;
  final String firstName;
  final String lastName;
  final String? picture;
  UserDbData(
      {required this.id,
      required this.firstName,
      required this.lastName,
      this.picture});
  factory UserDbData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return UserDbData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      firstName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}first_name'])!,
      lastName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_name'])!,
      picture: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}picture']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['first_name'] = Variable<String>(firstName);
    map['last_name'] = Variable<String>(lastName);
    if (!nullToAbsent || picture != null) {
      map['picture'] = Variable<String?>(picture);
    }
    return map;
  }

  UserDbCompanion toCompanion(bool nullToAbsent) {
    return UserDbCompanion(
      id: Value(id),
      firstName: Value(firstName),
      lastName: Value(lastName),
      picture: picture == null && nullToAbsent
          ? const Value.absent()
          : Value(picture),
    );
  }

  factory UserDbData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserDbData(
      id: serializer.fromJson<String>(json['id']),
      firstName: serializer.fromJson<String>(json['firstName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      picture: serializer.fromJson<String?>(json['picture']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'firstName': serializer.toJson<String>(firstName),
      'lastName': serializer.toJson<String>(lastName),
      'picture': serializer.toJson<String?>(picture),
    };
  }

  UserDbData copyWith(
          {String? id, String? firstName, String? lastName, String? picture}) =>
      UserDbData(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        picture: picture ?? this.picture,
      );
  @override
  String toString() {
    return (StringBuffer('UserDbData(')
          ..write('id: $id, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('picture: $picture')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, firstName, lastName, picture);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserDbData &&
          other.id == this.id &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.picture == this.picture);
}

class UserDbCompanion extends UpdateCompanion<UserDbData> {
  final Value<String> id;
  final Value<String> firstName;
  final Value<String> lastName;
  final Value<String?> picture;
  const UserDbCompanion({
    this.id = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.picture = const Value.absent(),
  });
  UserDbCompanion.insert({
    required String id,
    required String firstName,
    required String lastName,
    this.picture = const Value.absent(),
  })  : id = Value(id),
        firstName = Value(firstName),
        lastName = Value(lastName);
  static Insertable<UserDbData> custom({
    Expression<String>? id,
    Expression<String>? firstName,
    Expression<String>? lastName,
    Expression<String?>? picture,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (picture != null) 'picture': picture,
    });
  }

  UserDbCompanion copyWith(
      {Value<String>? id,
      Value<String>? firstName,
      Value<String>? lastName,
      Value<String?>? picture}) {
    return UserDbCompanion(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      picture: picture ?? this.picture,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (picture.present) {
      map['picture'] = Variable<String?>(picture.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserDbCompanion(')
          ..write('id: $id, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('picture: $picture')
          ..write(')'))
        .toString();
  }
}

class $UserDbTable extends UserDb with TableInfo<$UserDbTable, UserDbData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserDbTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _firstNameMeta = const VerificationMeta('firstName');
  @override
  late final GeneratedColumn<String?> firstName = GeneratedColumn<String?>(
      'first_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _lastNameMeta = const VerificationMeta('lastName');
  @override
  late final GeneratedColumn<String?> lastName = GeneratedColumn<String?>(
      'last_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _pictureMeta = const VerificationMeta('picture');
  @override
  late final GeneratedColumn<String?> picture = GeneratedColumn<String?>(
      'picture', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, firstName, lastName, picture];
  @override
  String get aliasedName => _alias ?? 'user_db';
  @override
  String get actualTableName => 'user_db';
  @override
  VerificationContext validateIntegrity(Insertable<UserDbData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta));
    } else if (isInserting) {
      context.missing(_firstNameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta));
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('picture')) {
      context.handle(_pictureMeta,
          picture.isAcceptableOrUnknown(data['picture']!, _pictureMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserDbData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return UserDbData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UserDbTable createAlias(String alias) {
    return $UserDbTable(attachedDatabase, alias);
  }
}

class UsersListDbData extends DataClass implements Insertable<UsersListDbData> {
  final String userId;
  final int order;
  final int page;
  UsersListDbData(
      {required this.userId, required this.order, required this.page});
  factory UsersListDbData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return UsersListDbData(
      userId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_id'])!,
      order: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}order'])!,
      page: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}page'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<String>(userId);
    map['order'] = Variable<int>(order);
    map['page'] = Variable<int>(page);
    return map;
  }

  UsersListDbCompanion toCompanion(bool nullToAbsent) {
    return UsersListDbCompanion(
      userId: Value(userId),
      order: Value(order),
      page: Value(page),
    );
  }

  factory UsersListDbData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UsersListDbData(
      userId: serializer.fromJson<String>(json['userId']),
      order: serializer.fromJson<int>(json['order']),
      page: serializer.fromJson<int>(json['page']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String>(userId),
      'order': serializer.toJson<int>(order),
      'page': serializer.toJson<int>(page),
    };
  }

  UsersListDbData copyWith({String? userId, int? order, int? page}) =>
      UsersListDbData(
        userId: userId ?? this.userId,
        order: order ?? this.order,
        page: page ?? this.page,
      );
  @override
  String toString() {
    return (StringBuffer('UsersListDbData(')
          ..write('userId: $userId, ')
          ..write('order: $order, ')
          ..write('page: $page')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userId, order, page);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UsersListDbData &&
          other.userId == this.userId &&
          other.order == this.order &&
          other.page == this.page);
}

class UsersListDbCompanion extends UpdateCompanion<UsersListDbData> {
  final Value<String> userId;
  final Value<int> order;
  final Value<int> page;
  const UsersListDbCompanion({
    this.userId = const Value.absent(),
    this.order = const Value.absent(),
    this.page = const Value.absent(),
  });
  UsersListDbCompanion.insert({
    required String userId,
    required int order,
    required int page,
  })  : userId = Value(userId),
        order = Value(order),
        page = Value(page);
  static Insertable<UsersListDbData> custom({
    Expression<String>? userId,
    Expression<int>? order,
    Expression<int>? page,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (order != null) 'order': order,
      if (page != null) 'page': page,
    });
  }

  UsersListDbCompanion copyWith(
      {Value<String>? userId, Value<int>? order, Value<int>? page}) {
    return UsersListDbCompanion(
      userId: userId ?? this.userId,
      order: order ?? this.order,
      page: page ?? this.page,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (order.present) {
      map['order'] = Variable<int>(order.value);
    }
    if (page.present) {
      map['page'] = Variable<int>(page.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersListDbCompanion(')
          ..write('userId: $userId, ')
          ..write('order: $order, ')
          ..write('page: $page')
          ..write(')'))
        .toString();
  }
}

class $UsersListDbTable extends UsersListDb
    with TableInfo<$UsersListDbTable, UsersListDbData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersListDbTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String?> userId = GeneratedColumn<String?>(
      'user_id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _orderMeta = const VerificationMeta('order');
  @override
  late final GeneratedColumn<int?> order = GeneratedColumn<int?>(
      'order', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _pageMeta = const VerificationMeta('page');
  @override
  late final GeneratedColumn<int?> page = GeneratedColumn<int?>(
      'page', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [userId, order, page];
  @override
  String get aliasedName => _alias ?? 'users_list_db';
  @override
  String get actualTableName => 'users_list_db';
  @override
  VerificationContext validateIntegrity(Insertable<UsersListDbData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('order')) {
      context.handle(
          _orderMeta, order.isAcceptableOrUnknown(data['order']!, _orderMeta));
    } else if (isInserting) {
      context.missing(_orderMeta);
    }
    if (data.containsKey('page')) {
      context.handle(
          _pageMeta, page.isAcceptableOrUnknown(data['page']!, _pageMeta));
    } else if (isInserting) {
      context.missing(_pageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  UsersListDbData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return UsersListDbData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UsersListDbTable createAlias(String alias) {
    return $UsersListDbTable(attachedDatabase, alias);
  }
}

class CurrentUserDBData extends DataClass
    implements Insertable<CurrentUserDBData> {
  final String userId;
  final String email;
  final String firstName;
  final String lastName;
  final String? picture;
  CurrentUserDBData(
      {required this.userId,
      required this.email,
      required this.firstName,
      required this.lastName,
      this.picture});
  factory CurrentUserDBData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return CurrentUserDBData(
      userId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_id'])!,
      email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email'])!,
      firstName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}first_name'])!,
      lastName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_name'])!,
      picture: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}picture']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<String>(userId);
    map['email'] = Variable<String>(email);
    map['first_name'] = Variable<String>(firstName);
    map['last_name'] = Variable<String>(lastName);
    if (!nullToAbsent || picture != null) {
      map['picture'] = Variable<String?>(picture);
    }
    return map;
  }

  CurrentUserDBCompanion toCompanion(bool nullToAbsent) {
    return CurrentUserDBCompanion(
      userId: Value(userId),
      email: Value(email),
      firstName: Value(firstName),
      lastName: Value(lastName),
      picture: picture == null && nullToAbsent
          ? const Value.absent()
          : Value(picture),
    );
  }

  factory CurrentUserDBData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CurrentUserDBData(
      userId: serializer.fromJson<String>(json['userId']),
      email: serializer.fromJson<String>(json['email']),
      firstName: serializer.fromJson<String>(json['firstName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      picture: serializer.fromJson<String?>(json['picture']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String>(userId),
      'email': serializer.toJson<String>(email),
      'firstName': serializer.toJson<String>(firstName),
      'lastName': serializer.toJson<String>(lastName),
      'picture': serializer.toJson<String?>(picture),
    };
  }

  CurrentUserDBData copyWith(
          {String? userId,
          String? email,
          String? firstName,
          String? lastName,
          String? picture}) =>
      CurrentUserDBData(
        userId: userId ?? this.userId,
        email: email ?? this.email,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        picture: picture ?? this.picture,
      );
  @override
  String toString() {
    return (StringBuffer('CurrentUserDBData(')
          ..write('userId: $userId, ')
          ..write('email: $email, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('picture: $picture')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userId, email, firstName, lastName, picture);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CurrentUserDBData &&
          other.userId == this.userId &&
          other.email == this.email &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.picture == this.picture);
}

class CurrentUserDBCompanion extends UpdateCompanion<CurrentUserDBData> {
  final Value<String> userId;
  final Value<String> email;
  final Value<String> firstName;
  final Value<String> lastName;
  final Value<String?> picture;
  const CurrentUserDBCompanion({
    this.userId = const Value.absent(),
    this.email = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.picture = const Value.absent(),
  });
  CurrentUserDBCompanion.insert({
    required String userId,
    required String email,
    required String firstName,
    required String lastName,
    this.picture = const Value.absent(),
  })  : userId = Value(userId),
        email = Value(email),
        firstName = Value(firstName),
        lastName = Value(lastName);
  static Insertable<CurrentUserDBData> custom({
    Expression<String>? userId,
    Expression<String>? email,
    Expression<String>? firstName,
    Expression<String>? lastName,
    Expression<String?>? picture,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (email != null) 'email': email,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (picture != null) 'picture': picture,
    });
  }

  CurrentUserDBCompanion copyWith(
      {Value<String>? userId,
      Value<String>? email,
      Value<String>? firstName,
      Value<String>? lastName,
      Value<String?>? picture}) {
    return CurrentUserDBCompanion(
      userId: userId ?? this.userId,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      picture: picture ?? this.picture,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (picture.present) {
      map['picture'] = Variable<String?>(picture.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CurrentUserDBCompanion(')
          ..write('userId: $userId, ')
          ..write('email: $email, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('picture: $picture')
          ..write(')'))
        .toString();
  }
}

class $CurrentUserDBTable extends CurrentUserDB
    with TableInfo<$CurrentUserDBTable, CurrentUserDBData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CurrentUserDBTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String?> userId = GeneratedColumn<String?>(
      'user_id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String?> email = GeneratedColumn<String?>(
      'email', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _firstNameMeta = const VerificationMeta('firstName');
  @override
  late final GeneratedColumn<String?> firstName = GeneratedColumn<String?>(
      'first_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _lastNameMeta = const VerificationMeta('lastName');
  @override
  late final GeneratedColumn<String?> lastName = GeneratedColumn<String?>(
      'last_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _pictureMeta = const VerificationMeta('picture');
  @override
  late final GeneratedColumn<String?> picture = GeneratedColumn<String?>(
      'picture', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [userId, email, firstName, lastName, picture];
  @override
  String get aliasedName => _alias ?? 'current_user_d_b';
  @override
  String get actualTableName => 'current_user_d_b';
  @override
  VerificationContext validateIntegrity(Insertable<CurrentUserDBData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta));
    } else if (isInserting) {
      context.missing(_firstNameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta));
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('picture')) {
      context.handle(_pictureMeta,
          picture.isAcceptableOrUnknown(data['picture']!, _pictureMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  CurrentUserDBData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return CurrentUserDBData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CurrentUserDBTable createAlias(String alias) {
    return $CurrentUserDBTable(attachedDatabase, alias);
  }
}

abstract class _$LocalCacheDatabase extends GeneratedDatabase {
  _$LocalCacheDatabase(QueryExecutor e)
      : super(SqlTypeSystem.defaultInstance, e);
  late final $UserDbTable userDb = $UserDbTable(this);
  late final $UsersListDbTable usersListDb = $UsersListDbTable(this);
  late final $CurrentUserDBTable currentUserDB = $CurrentUserDBTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [userDb, usersListDb, currentUserDB];
}
