import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/custom_doctors_item_widget.dart';

import 'package:flutter/material.dart';

class ResultListView extends StatelessWidget {
  const ResultListView({super.key, required this.doctors});
  final List<DoctorEntity> doctors;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       itemCount:doctors.length ,
       physics:const NeverScrollableScrollPhysics(),
       shrinkWrap: true,
      
      itemBuilder: (constex, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: CustomDoctorsItemWidget(
          doctor: doctors[index],
        ),
      );
    });
  }
}
