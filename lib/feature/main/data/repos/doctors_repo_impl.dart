import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:doctors_app/core/errors/failure.dart';
import 'package:doctors_app/feature/main/data/data_source/home_local_data_source.dart';
import 'package:doctors_app/feature/main/data/data_source/home_remote_data_source.dart';
import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';
import 'package:doctors_app/feature/main/domain/repos/doctor_repo.dart';

class DoctorsRepoImpl implements DoctorRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;
  DoctorsRepoImpl(
      {required this.homeLocalDataSource, required this.homeRemoteDataSource});

  @override
  Future<Either<Failure, List<DoctorEntity>>> fetchAllDoctors(
      {int pageNumber = 0}) async {
    List<DoctorEntity> data;
    try {
      data = homeLocalDataSource.fetchAllDoctors();
      if (data.isNotEmpty) {
        return right(data);
      }
      data = await homeRemoteDataSource.fetchAllDoctors(pageNumber: pageNumber);
      return right(data);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<DoctorEntity>>> fetchDoctorsBySpecialization(
      {required int specialization}) async {
    List<DoctorEntity> data;
    try {
      data = homeLocalDataSource.fetchDoctorsBySpecialization(
          specialization: specialization);
      if (data.isNotEmpty) {
        return right(data);
      } else {
        data = await homeRemoteDataSource.fetchDoctorsBySpecialization(
            specialization: specialization);
        return right(data);
      }
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
