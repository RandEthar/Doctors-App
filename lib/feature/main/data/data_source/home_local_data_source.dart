

import 'package:doctors_app/core/helpers/hive_constant.dart';
import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<DoctorEntity> fetchAllDoctors({int pageNumber = 0});
     List<DoctorEntity>fetchDoctorsBySpecialization({required int specialization});
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  List<DoctorEntity> fetchAllDoctors({int pageNumber = 0}) {
   var doctors=Hive.box<DoctorEntity>(HiveConstant.doctorsBox);
   return doctors.values.toList();
  }
  
  @override
  List<DoctorEntity> fetchDoctorsBySpecialization({required int specialization}) {
     var doctors=Hive.box<DoctorEntity>(HiveConstant.doctorsBox);
     return doctors.values.where((doctor)=>specialization==doctor.specialtyId).toList();
  }
  
}