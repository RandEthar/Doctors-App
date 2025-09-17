import 'package:doctors_app/core/services/api_constants.dart';
import 'package:doctors_app/core/services/api_service.dart';
import 'package:doctors_app/feature/main/data/models/doctor_model/doctor_model.dart';
import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<DoctorEntity>> fetchAllDoctors();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl({required this.apiService});
  @override
  Future<List<DoctorEntity>> fetchAllDoctors() async {
    var data = await apiService.get(endPoint: ApiConstants.allDoctors);
    List<DoctorEntity> doctors = [];
    for (var doctor in data["data"]) {
      doctors.add(DoctorModel.fromJson(doctor));
    }
    return doctors;
  }
}
