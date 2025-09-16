import 'package:doctors_app/feature/main/presentation/view/widgets/custom_doctors_item_widget.dart';
import 'package:flutter/material.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 16, bottom: 16),
            child: CustomDoctorsItemWidget(),
          );
        });
  }
}
