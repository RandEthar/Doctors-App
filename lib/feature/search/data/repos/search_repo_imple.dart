import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:doctors_app/core/errors/failure.dart';
import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';
import 'package:doctors_app/feature/search/data/data_source/search_remote_data_source.dart';
import 'package:doctors_app/feature/search/domain/repos/search_repo.dart';

class SearchRepoImple implements SearchRepo {
  final SearchRemoteDataSource searchRemoteDataSource;

  SearchRepoImple({required this.searchRemoteDataSource});
  @override
  Future<Either<Failure, List<DoctorEntity>>> searchDoctorByName(
      {required String name}) async {
    try {
      List<DoctorEntity> doctors =
          await searchRemoteDataSource.searchDoctorByName(name: name);
      return right(doctors);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
