import 'package:doctors_app/core/helpers/app_regex.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:doctors_app/core/widgets/button_app.dart';
import 'package:doctors_app/core/widgets/text_form_field_app.dart';
import 'package:doctors_app/feature/auth/presentation/manger/cubit/signup_with_email_and_password_cubit_cubit.dart';

import 'package:doctors_app/feature/auth/presentation/views/sign_up_view_password.dart';

import 'package:doctors_app/feature/auth/presentation/views/widgets/custom_or_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/have_account_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/pop_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/social_login_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Form(
        key: context.read<SignupWithEmailAndPasswordCubit>().emailKey,
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
                "Sign Up",
                style: AppTextStyle.bold24,
              )),
              const SizedBox(
                height: 56,
              ),
              Text(
                'Full Name',
                style: AppTextStyle.medium16,
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormFieldApp(
                hintText: "Enter full name",
                controller: context
                    .read<SignupWithEmailAndPasswordCubit>()
                    .nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Full name is required";
                  } else if (value.length < 3) {
                    return "Name must be at least 3 characters";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Email Address',
                style: AppTextStyle.medium16,
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormFieldApp(
                hintText: "Enter email address",
                controller: context
                    .read<SignupWithEmailAndPasswordCubit>()
                    .emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email is required";
                  } else if (!AppRegex.isEmailValid(value)) {
                    return "Please enter a valid email";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'phone Number',
                style: AppTextStyle.medium16,
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormFieldApp(
                controller: context
                    .read<SignupWithEmailAndPasswordCubit>()
                    .phoneController,
                hintText: "Enter phone number",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Phone number is required";
                  }
                  // } else if (!RegExp(r'^\d{10,15}$').hasMatch(value)) {
                  //   return "Enter a valid phone number";
                  // }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'gender',
                style: AppTextStyle.medium16,
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormFieldApp(
                controller: context
                    .read<SignupWithEmailAndPasswordCubit>()
                    .genderController,
                hintText: "Enter gender (0 for Male, 1 for Female)",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Gender is required";
                  } else if (value != "0" && value != "1") {
                    return "Enter 0 for Male or 1 for Female";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 32,
              ),
              ButtonApp(
                text: "Continue",
                onTap: () {
                  if (context
                      .read<SignupWithEmailAndPasswordCubit>()
                      .emailKey
                      .currentState!
                      .validate()) {
                    Navigator.pushNamed(context, SignUpViewPassword.routeName,
                        arguments:
                            context.read<SignupWithEmailAndPasswordCubit>());
                  }
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
