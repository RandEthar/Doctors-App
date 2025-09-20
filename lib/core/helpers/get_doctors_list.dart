 import 'package:doctors_app/feature/main/data/models/doctor_model/doctor_model.dart';
import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';

List<DoctorEntity> getDoctorsList(Map<String, dynamic> data) {
     List<DoctorEntity> doctors = [];
    for (var doctor in data["data"]) {
      doctors.add(DoctorModel.fromJson(doctor));
    }
    return doctors;
  }