import 'package:dartz/dartz.dart';
import 'package:doctors_app/core/errors/failure.dart';

abstract class UseCase<T> {
  Future<Either<Failure, T>> call();
}
