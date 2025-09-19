import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:doctors_app/feature/main/presentation/manger/fetch_all_doctor/fetch_all_doctor_cubit.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/category_grid_view.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/custom_home_header_widget.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/doctors_list_bloc_builder.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/section_header.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/upcoming_appointments_list_view.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/upcoming_appointments_list_view_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
   late ScrollController controller;
  int pageNumber = 1;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    controller = ScrollController();
    controller.addListener(() async {
      var currentPosition = controller.position.pixels;
      var maxScrollLength = controller.position.maxScrollExtent;
      if (currentPosition >= maxScrollLength * .7) {
        if (!isLoading) {
          isLoading = true;
          await context
              .read<FetchAllDoctorCubit>()
              .fetchAllDoctors(pageNumber: pageNumber++);
          isLoading = false;
        }
      }
    });
  }
  @override
void dispose() {
  controller.dispose();
  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    controller: controller,
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
            const UpcomingAppointmentsListViewBlocBuilder(),
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
            const DoctorsListBlocBuilder()
          ],
        ),
      ),
    );
  }
}
