import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/custom_doctors_item_widget.dart';
import 'package:flutter/material.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({super.key, required this.doctors});
final  List<DoctorEntity>doctors;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          return  Padding(
            padding:const EdgeInsets.only(right: 16, bottom: 16),
            child: CustomDoctorsItemWidget(doctor: doctors[index],),
          );
        });
  }
}
