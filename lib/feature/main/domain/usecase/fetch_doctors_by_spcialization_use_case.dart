import 'package:dartz/dartz.dart';
import 'package:doctors_app/core/errors/failure.dart';
import 'package:doctors_app/core/use_case/use_case_with_param.dart';
import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';
import 'package:doctors_app/feature/main/domain/repos/doctor_repo.dart';

class FetchDoctorsBySpcializationUseCase extends UseCase<List<DoctorEntity>,int>{
  final DoctorRepo doctorRepo;

  FetchDoctorsBySpcializationUseCase({required this.doctorRepo});
  @override
  Future<Either<Failure, List<DoctorEntity>>> call({required int param})async {
  return await  doctorRepo.fetchDoctorsBySpecialization(specialization: param);
  }
}