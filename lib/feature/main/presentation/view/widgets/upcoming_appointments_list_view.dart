import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/upcoming_appointments_item_widget.dart';
import 'package:flutter/material.dart';

class UpcomingAppointmentsListView extends StatelessWidget {
  const UpcomingAppointmentsListView({super.key, required this.doctors});
final List<DoctorEntity>doctors;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 132,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount:doctors.length,
          itemBuilder: (context, index) {
            return  Padding(
              padding:const EdgeInsets.only(right: 16),
              child: UpcomingAppointmentsItemWidget(doctor: doctors[index],),
            );
          }),
    );
  }
}
