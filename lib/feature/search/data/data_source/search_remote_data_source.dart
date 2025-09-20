import 'package:doctors_app/core/helpers/get_doctors_list.dart';
import 'package:doctors_app/core/services/api_constants.dart';
import 'package:doctors_app/core/services/api_service.dart';
import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';

abstract class SearchRemoteDataSource {
  Future<List<DoctorEntity>> searchDoctorByName({required String name});
}

class SearchRemoteDataSourceImple extends SearchRemoteDataSource {
  final ApiService apiService;

  SearchRemoteDataSourceImple({required this.apiService});

  @override
  Future<List<DoctorEntity>> searchDoctorByName({required String name}) async {
    var data =
        await apiService.get(endPoint: ApiConstants.searchDoctor(name: name));
    List<DoctorEntity> doctors = getDoctorsList(data);
    return doctors;
  }
}
