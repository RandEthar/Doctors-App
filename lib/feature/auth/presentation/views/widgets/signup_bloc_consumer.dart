import 'package:doctors_app/feature/auth/presentation/manger/cubit/signup_with_email_and_password_cubit_cubit.dart';
import 'package:doctors_app/feature/auth/presentation/views/sigin_view_email.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/sign_up_view_body_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupBlocConsumer extends StatelessWidget {
  const SignupBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupWithEmailAndPasswordCubit,
        SignupWithEmailAndPasswordState>(
      buildWhen: (previous, current) =>
          current is SignupWithEmailAndPasswordLoading ||
          current is SignupWithEmailAndPasswordSuccess ||
          current is SignupWithEmailAndPasswordFailure,
      listener: (context, state) {
     if (state is SignupWithEmailAndPasswordSuccess) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text("Account created successfully. Please login."),
      duration: Duration(seconds: 2),
    ),
  );

  Future.delayed(const Duration(seconds: 2), () {
    Navigator.pushNamed(context, SiginViewEmail.routeName);
  });
} else if (state is SignupWithEmailAndPasswordFailure) {
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
            inAsyncCall: state is SignupWithEmailAndPasswordLoading,
            child: const SignUpViewBodyPassword());
      },
    );
  }
}
