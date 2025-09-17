

import 'package:doctors_app/core/helpers/hive_constant.dart';
import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<DoctorEntity> fetchAllDoctors();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  List<DoctorEntity> fetchAllDoctors() {
   var doctors=Hive.box<DoctorEntity>(HiveConstant.doctorsBox);
   return doctors.values.toList();
  }
  
}