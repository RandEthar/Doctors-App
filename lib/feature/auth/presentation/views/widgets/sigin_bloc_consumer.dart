import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/feature/auth/presentation/manger/sighin/signin_with_email_and_password_cubit.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/sigin_view_password_body.dart';
import 'package:doctors_app/feature/main/presentation/view/main_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginBlocConsumer extends StatelessWidget {
  const LoginBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninWithEmailAndPasswordCubit,
        SigninWithEmailAndPasswordState>(
      listener: (context, state) {
        if (state is SigninWithEmailAndPasswordSuccess) {
          Navigator.pushNamed(context, MainView.routeName);
        } else if (state is SigninWithEmailAndPasswordFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Please check your email or password"),
              duration: Duration(seconds: 3),
            ),
          );
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          color: AppColor.primary,
          inAsyncCall: state is SigninWithEmailAndPasswordLoading,
          child: const SiginViewPasswordBody(),
        );
      },
    );
  }
}
