import 'package:dartz/dartz.dart';
import 'package:doctors_app/core/errors/failure.dart';
import 'package:doctors_app/feature/auth/data/models/login_request_body.dart';
import 'package:doctors_app/feature/auth/data/models/login_response.dart';

abstract class AuthRepo {
  Future<Either<Failure, LoginResponse>> signInWithEmailAndPassword(
    LoginRequestBody loginRequestBody,
  );
}
