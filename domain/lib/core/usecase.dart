import 'package:dartz/dartz.dart';

import 'errors/failure.dart';

abstract class UseCase<Type, T> {
  Future<Either<Failure, Type>> call(T params);
}

abstract class UseCaseNoParams<Type> {
  Future<Either<Failure, Type>> call();
}

abstract class UseCaseStream<Type, T> {
  Stream<Either<Failure, Type>> callStream(T params);
}

abstract class UseCaseStreamNoParams<Type> {
  Stream<Either<Failure, Type>> callStream();
}

