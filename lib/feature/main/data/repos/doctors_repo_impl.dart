import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:doctors_app/core/errors/failure.dart';
import 'package:doctors_app/feature/main/data/data_source/home_remote_data_source.dart';
import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';
import 'package:doctors_app/feature/main/domain/repos/doctor_repo.dart';

class DoctorsRepoImpl implements DoctorRepo {
  final HomeRemoteDataSource homeRemoteDataSource;

  DoctorsRepoImpl({required this.homeRemoteDataSource});
  @override
  Future<Either<Failure, List<DoctorEntity>>> fetchAllDoctors() async {
    try {
      var data = await homeRemoteDataSource.fetchAllDoctors();
      return right(data);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
