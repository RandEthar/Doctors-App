import 'package:dio/dio.dart';
import 'package:doctors_app/core/services/api_service.dart';
import 'package:doctors_app/core/services/dio_factory.dart';
import 'package:doctors_app/feature/auth/data/repos/auth_repo_impl.dart';
import 'package:doctors_app/feature/main/data/data_source/home_remote_data_source.dart';
import 'package:doctors_app/feature/main/data/repos/doctors_repo_impl.dart';
import 'package:doctors_app/feature/main/domain/repos/doctor_repo.dart';

import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setup() async{
  Dio dio =await DioFactory.getDio();

  getIt.registerSingleton<ApiService>(ApiService(dio: dio));
  getIt.registerSingleton<AuthRepoImpl>(
      AuthRepoImpl(apiService: getIt.get<ApiService>()));
  getIt.registerSingleton<DoctorRepo>(DoctorsRepoImpl(
      homeRemoteDataSource:
          HomeRemoteDataSourceImpl(apiService: getIt.get<ApiService>())));
}
