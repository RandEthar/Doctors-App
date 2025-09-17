import 'package:doctors_app/core/di/dependency_injection.dart';

import 'package:doctors_app/feature/main/domain/repos/doctor_repo.dart';
import 'package:doctors_app/feature/main/domain/usecase/fetch_all_doctors_use_case.dart';
import 'package:doctors_app/feature/main/presentation/manger/cubit/fetch_all_doctor_cubit.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/custom_nav_bar.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});
  static const String routeName = 'MainView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomNavBar(),
      body: SafeArea(
          child: BlocProvider(
        create: (context) => FetchAllDoctorCubit(
            FetchAllDoctorsUseCase(doctorRepo: getIt.get<DoctorRepo>()))..fetchAllDoctors(),
        child: const HomeViewBody(),
      )),
    );
  }
}
