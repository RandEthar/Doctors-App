import 'package:doctors_app/core/helpers/app_regex.dart';
import 'package:doctors_app/core/helpers/password_validation.dart';
import 'package:doctors_app/core/widgets/password_validation.dart';
import 'package:doctors_app/feature/auth/domain/usecase/signup_with_email_and_pasword_use_cae.dart';
import 'package:doctors_app/feature/auth/presentation/manger/cubit/signup_with_email_and_password_cubit_cubit.dart';
import 'package:doctors_app/feature/auth/presentation/manger/signIn/signin_with_email_and_password_cubit.dart';
import 'package:doctors_app/feature/auth/presentation/views/sigin_view_email.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/custom_text_form_field_password.dart';
import 'package:flutter/material.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:doctors_app/core/widgets/button_app.dart';

import 'package:doctors_app/feature/auth/presentation/views/widgets/custom_or_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/have_account_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/pop_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/social_login_button_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpViewBodyPassword extends StatefulWidget {
  const SignUpViewBodyPassword({super.key});

  @override
  State<SignUpViewBodyPassword> createState() => _SignUpViewBodyPasswordState();
}

class _SignUpViewBodyPasswordState extends State<SignUpViewBodyPassword> {
  late TextEditingController passwordController;
  bool hasLowerCase = false;
  bool hasMinLength = false;
  bool hasNumber = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacter = false;
  @override
  void initState() {
    super.initState();
    passwordController =
        context.read<SignupWithEmailAndPasswordCubit>().passwordController;
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacter =
            AppRegex.hasSpecialCharacter(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Form(
        key: context.read<SignupWithEmailAndPasswordCubit>().passwordKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PopWidget(),
              const SizedBox(
                height: 8,
              ),
              Center(
                  child: Text(
                textAlign: TextAlign.center,
                "Set Password",
                style: AppTextStyle.bold24,
              )),
              const SizedBox(
                height: 56,
              ),
              Text(
                'New Password',
                style: AppTextStyle.medium16,
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextFormFieldPassword(
                text: "New password",
                controller: context
                    .read<SignupWithEmailAndPasswordCubit>()
                    .passwordController,
                validator: (value) {
                  passwordValidation(value);
                },
              ),
              const SizedBox(
                height: 24,
              ),
              PasswordValidation(
                hasSpecialCharacter: hasSpecialCharacter,
                hasLowerCase: hasLowerCase,
                hasMinLength: hasMinLength,
                hasNumber: hasNumber,
                hasUpperCase: hasUpperCase,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Confirm Password',
                style: AppTextStyle.medium16,
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextFormFieldPassword(
                text: "Confirm password",
                controller: context
                    .read<SignupWithEmailAndPasswordCubit>()
                    .passwordConfirmationController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please confirm your password";
                  } else if (value !=
                      context
                          .read<SignupWithEmailAndPasswordCubit>()
                          .passwordController
                          .text) {
                    return "Passwords do not match";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 32,
              ),
              ButtonApp(
                text: "Sign Up",
                onTap: () {
                  validateThenLogin(context);
                },
              ),
              const SizedBox(
                height: 32,
              ),
              const HaveAccountWidget(),
              const CustomOrWidget(),
              const SocialLoginButtonWidget()
            ],
          ),
        ),
      ),
    );
  }
}

void validateThenLogin(BuildContext context) {
  if (context
      .read<SignupWithEmailAndPasswordCubit>()
      .passwordKey
      .currentState!
      .validate()) {
    context.read<SignupWithEmailAndPasswordCubit>().signupWithEmailAndPasword();
  }
}
