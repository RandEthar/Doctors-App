import 'package:dartz/dartz.dart';
import 'package:doctors_app/core/errors/failure.dart';
import 'package:doctors_app/core/use_case/use_case_with_param.dart';
import 'package:doctors_app/feature/auth/data/models/login_request_body.dart';
import 'package:doctors_app/feature/auth/data/models/auth_response.dart';
import 'package:doctors_app/feature/auth/domain/repos/auth_repo.dart';

class SignInWithEmailAndPasswordUseCase 
    extends UseCase<AuthResponse, LoginRequestBody> {

  final AuthRepo authRepo;

  SignInWithEmailAndPasswordUseCase({required this.authRepo});
  
  @override
  Future<Either<Failure, AuthResponse>> call({required LoginRequestBody param}) async {
    return await authRepo.signInWithEmailAndPassword(param);
  }
}
