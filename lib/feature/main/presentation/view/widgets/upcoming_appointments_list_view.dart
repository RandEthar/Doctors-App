import 'package:doctors_app/feature/main/presentation/view/widgets/upcoming_appointments_item_widget.dart';
import 'package:flutter/material.dart';

class UpcomingAppointmentsListView extends StatelessWidget {
  const UpcomingAppointmentsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 132,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
        return const Padding(
          padding:  EdgeInsets.only(right: 16),
          child: UpcomingAppointmentsItemWidget(),
        );
      }),
    );
  }
}
