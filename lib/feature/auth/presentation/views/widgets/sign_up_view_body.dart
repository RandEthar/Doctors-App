

import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:doctors_app/core/widgets/button_app.dart';

import 'package:doctors_app/feature/auth/presentation/views/sign_up_view_password.dart';

import 'package:doctors_app/feature/auth/presentation/views/widgets/custom_or_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/have_account_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/pop_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/social_login_button_widget.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const  SignUpViewBody ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Form(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                const   PopWidget(),
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
                height:56,
              ),
               Text(
                'Full Name',
                style: AppTextStyle.medium16,
              ),
              const SizedBox(
                height: 12,
              ),
              // const TextFormFieldApp(
              //   hintText: "Enter full name",
              // ),
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
              // const TextFormFieldApp(
              //   hintText: "Enter email address",
              // ),
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
              // const TextFormFieldApp(
              //   hintText: "Enter email address",
              // ),
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
              // const TextFormFieldApp(
              //   hintText: "Enter phone Number",
              // ),
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
              // const TextFormFieldApp(
              //   hintText: "Enter email address",
              // ),
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
              // const TextFormFieldApp(
              //   hintText: "Enter Gender",
              // ),
                 const SizedBox(
                height: 32,
              ),
               ButtonApp(text: "Continue",onTap: () {
                 Navigator.pushNamed(context,SignUpViewPassword.routeName);
              },),
              const SizedBox(
                height: 32,
              ),const HaveAccountWidget(),
          
             const CustomOrWidget(),
            const SocialLoginButtonWidget()
            ],
          ),
        ),
      ),
    );
  }
}
