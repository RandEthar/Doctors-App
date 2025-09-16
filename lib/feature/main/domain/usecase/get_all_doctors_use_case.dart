import 'package:dartz/dartz.dart';
import 'package:doctors_app/core/errors/failure.dart';
import 'package:doctors_app/core/use_case/use_case_without_param.dart';
import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';
import 'package:doctors_app/feature/main/domain/repos/doctor_repo.dart';

class GetAllDoctorsUseCase extends UseCase<List<DoctorEntity>> {
  final DoctorRepo doctorRepo;

  GetAllDoctorsUseCase({required this.doctorRepo});
  
  @override
  Future<Either<Failure, List<DoctorEntity>>> call()async {
    return await doctorRepo.fetchAllDoctors();
  }


}
