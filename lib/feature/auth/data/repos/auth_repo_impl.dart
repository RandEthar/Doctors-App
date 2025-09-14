import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:doctors_app/core/errors/failure.dart';
import 'package:doctors_app/core/services/api_constants.dart';
import 'package:doctors_app/core/services/api_service.dart';
import 'package:doctors_app/feature/auth/data/models/login_request_body.dart';
import 'package:doctors_app/feature/auth/data/models/auth_response.dart';
import 'package:doctors_app/feature/auth/data/models/signup_request_body.dart';
import 'package:doctors_app/feature/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final ApiService apiService;

  AuthRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, AuthResponse>> signInWithEmailAndPassword(
      LoginRequestBody loginRequestBody) async {
    try {
      final data = await apiService.post(
        endPoint: ApiConstants.login,
        data: loginRequestBody.toJson(),
      );
      return Right(AuthResponse.fromJson(data));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, AuthResponse>> signupWithEmailAndPassword(SignupRequestBody signupRequestBody) async{
    try {
      final data = await apiService.post(
        endPoint: ApiConstants.register,
        data:  signupRequestBody.toJson(),
      );
      return Right(AuthResponse.fromJson(data));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
  
 
}

