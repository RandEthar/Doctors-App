import 'package:dio/dio.dart';
import 'package:doctors_app/core/services/api_service.dart';
import 'package:doctors_app/core/services/dio_factory.dart';
import 'package:doctors_app/feature/auth/data/repos/auth_repo_impl.dart';
import 'package:doctors_app/feature/auth/domain/usecase/signin_with_email_and_pasword_use_cae.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  Dio dio = DioFactory.getDio();

  getIt.registerSingleton<ApiService>(ApiService(dio: dio));
  getIt.registerSingleton<SignInWithEmailAndPasswordUseCase>(
      SignInWithEmailAndPasswordUseCase(
          authRepo: AuthRepoImpl(apiService:getIt.get<ApiService>())));
}
