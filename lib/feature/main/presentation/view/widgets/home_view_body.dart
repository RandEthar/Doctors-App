import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/category_grid_view.dart';

import 'package:doctors_app/feature/main/presentation/view/widgets/custom_home_header_widget.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/doctors_list.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/section_header.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/upcoming_appointments_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomHomeHeaderWidegt(),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Upcoming Appointments",
              style: AppTextStyle.bold18.copyWith(color: AppColor.darkerBlue),
            ),
            const SizedBox(
              height: 24,
            ),
            const UpcomingAppointmentsListView(),
            const SizedBox(
              height: 40,
            ),
            const SectionHeader(
              text: "Categories",
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 27),
              child: CategoryGridView(),
            ),
            const SizedBox(
              height: 40,
            ),
                   const SectionHeader(
              text: "Find Doctors",
            ),
             const SizedBox(
              height: 24,
            ),
        const   DoctorsList()
          ],
        ),
      ),
    );
  }
}
