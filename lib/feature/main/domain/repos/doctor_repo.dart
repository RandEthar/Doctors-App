import 'package:dartz/dartz.dart';
import 'package:doctors_app/core/errors/failure.dart';
import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';

abstract class DoctorRepo {
  Future<Either<Failure, List<DoctorEntity>>> fetchAllDoctors();
}
