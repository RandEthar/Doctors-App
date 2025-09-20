import 'package:doctors_app/core/helpers/get_doctors_list.dart';
import 'package:doctors_app/core/helpers/hive_constant.dart';
import 'package:doctors_app/core/services/api_constants.dart';
import 'package:doctors_app/core/services/api_service.dart';
import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeRemoteDataSource {
  Future<List<DoctorEntity>> fetchAllDoctors({int pageNumber = 0});
     Future<List<DoctorEntity>> fetchDoctorsBySpecialization({required int specialization});
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl({required this.apiService});
  @override
  Future<List<DoctorEntity>> fetchAllDoctors({int pageNumber = 0}) async {
    var data = await apiService.get(endPoint: ApiConstants.allDoctors);
    List<DoctorEntity> doctors = getDoctorsList(data);
    saveAllDoctors(doctors);
    return doctors;
  }

  void saveAllDoctors(List<DoctorEntity> doctors) {
     var boxDoctoes=Hive.box<DoctorEntity>(HiveConstant.doctorsBox);
    boxDoctoes.addAll(doctors);
  }

 
  
  @override
  Future<List<DoctorEntity>> fetchDoctorsBySpecialization({required int specialization}) async{
   var data=await apiService.get(endPoint: ApiConstants.filterDoctors(index: specialization));
      List<DoctorEntity> doctors = getDoctorsList(data);
    return doctors;

  }
}
