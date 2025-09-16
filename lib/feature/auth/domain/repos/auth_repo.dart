import 'package:dartz/dartz.dart';
import 'package:doctors_app/core/errors/failure.dart';
import 'package:doctors_app/feature/auth/data/models/login_request_body.dart';
import 'package:doctors_app/feature/auth/data/models/auth_response.dart';
import 'package:doctors_app/feature/auth/data/models/signup_request_body.dart';

abstract class AuthRepo {
  Future<Either<Failure, AuthResponse>> signInWithEmailAndPassword(
    LoginRequestBody loginRequestBody,
  );
  Future<Either<Failure, AuthResponse>> signupWithEmailAndPassword(
    SignupRequestBody signupRequestBody,
  );
}
