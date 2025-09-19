import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/feature/auth/presentation/manger/signIn/signin_with_email_and_password_cubit.dart';
import 'package:doctors_app/feature/main/presentation/manger/doctors_cubit/doctors_cubit.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/upcoming_appointments_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpcomingAppointmentsListViewBlocBuilder extends StatelessWidget {
  const UpcomingAppointmentsListViewBlocBuilder({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorsCubit, DoctorsState>(
      buildWhen: (previous, current) =>
          current is DoctorsLoading ||
          current is DoctorsSuccess ||
          current is DoctorsFailure,
      builder: (context, state) {
        if (state is DoctorsSuccess) {
            
          return UpcomingAppointmentsListView(doctors: state.doctors);
        } else if (state is DoctorsFailure) {
     
          return Text(state.errMessage);

        } else {
          return const Center(
            child:SizedBox(
              height: 30,
              width: 30,
              child: CircularProgressIndicator(
                color: AppColor.primary,
              ),
            ),
          );
        }
      },
    );
  }
}
