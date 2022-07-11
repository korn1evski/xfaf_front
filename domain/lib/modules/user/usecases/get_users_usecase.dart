import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/core/usecase.dart';
import 'package:domain/modules/user/entities/index.dart';
import 'package:domain/modules/user/repository/user_repository.dart';
import 'package:rxdart/rxdart.dart';

class GetUsersUseCase extends UseCaseStream<UsersData, GetUsersParams> {
  final UserRepository repository;

  GetUsersUseCase({required this.repository});

  @override
  Stream<Either<Failure, UsersData>> callStream(GetUsersParams params) {
    var controller = StreamController<Either<Failure, bool>>();
    controller.sink.add(Right(false));
    repository.getUsersApi(params.page - 1, params.limit).then((value) {
      value.fold((l) {
        controller.sink.add(Left(l));
        if (params.refresh) params.onRefresh.call(false);
      }, (r) {
        if (params.refresh) params.onRefresh.call(true);
        repository.insertUsers(r);
        repository.insertUsersList(r.map((e) => e.id).toList(),params.page);
        controller.sink.add(Right(r.length<params.limit));
      });
    });

    return CombineLatestStream.combine2(repository.getUsers(0, params.page * params.limit), controller.stream,
        (Either<Failure, List<UserEntity>> a, Either<Failure, bool> b) {
          Failure? failure;
          List<UserEntity>? users;
          bool isLastPage =false;
          a.fold((l) => failure = l, (r) => users = r);
          b.fold((l) => failure = l, (r) => isLastPage = r);
          if (failure != null) return Left(failure!);
      return Right(UsersData(isLastPage: isLastPage, users: users!));
    });
  }
}

class UsersData {
  bool isLastPage;
  List<UserEntity> users;

  UsersData({required this.isLastPage, required this.users});
}

class GetUsersParams {
  final bool refresh;
  final int page;
  final int limit;
  final Function(bool) onRefresh;

  GetUsersParams({required this.page, required this.limit, this.refresh = false, required this.onRefresh});
}
