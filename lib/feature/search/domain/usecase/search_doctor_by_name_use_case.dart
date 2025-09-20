import 'package:dartz/dartz.dart';
import 'package:doctors_app/core/errors/failure.dart';
import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';
import 'package:doctors_app/feature/search/domain/repos/search_repo.dart';

import '../../../../core/use_case/use_case_with_param.dart';

class SearchDoctorByNameUseCase extends UseCase<List<DoctorEntity>, String> {
  final SearchRepo searchRepo;

  SearchDoctorByNameUseCase({required this.searchRepo});

  @override
  Future<Either<Failure, List<DoctorEntity>>> call(
      {required String param}) async {
    return await searchRepo.searchDoctorByName(name: param);
  }
}
