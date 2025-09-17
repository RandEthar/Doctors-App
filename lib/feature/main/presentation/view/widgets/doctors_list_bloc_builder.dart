import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/feature/main/presentation/manger/cubit/fetch_all_doctor_cubit.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/doctors_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsListBlocBuilder extends StatelessWidget {
  const DoctorsListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchAllDoctorCubit, FetchAllDoctorState>(
      buildWhen: (previous, current) =>
          current is FetchAllDoctorLoading ||
          current is FetchAllDoctorSuccess ||
          current is FetchAllDoctorFailure,
      builder: (context, state) {
        if (state is FetchAllDoctorSuccess) {
          return DoctorsList(doctors: state.doctors);
        } else if (state is FetchAllDoctorFailure) {
          return Text(state.errMessage);
        } else {
          return const SizedBox(
            height: 30,
            width: 30,
            child: CircularProgressIndicator(
              color: AppColor.primary,
            ),
          );
        }
      },
    );
  }
}
