import 'package:doctors_app/core/helpers/app_regex.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:doctors_app/core/widgets/button_app.dart';
import 'package:doctors_app/core/widgets/text_form_field_app.dart';
import 'package:doctors_app/feature/auth/presentation/manger/signIn/signin_with_email_and_password_cubit.dart';
import 'package:doctors_app/feature/auth/presentation/views/sigin_view_password.dart';

import 'package:doctors_app/feature/auth/presentation/views/widgets/create_account_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/custom_or_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/pop_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/social_login_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SiginViewEmailBody extends StatelessWidget {
  const SiginViewEmailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Form(
        key: context.read<SigninWithEmailAndPasswordCubit>().formKeyEmail,
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
                "Sign In",
                style: AppTextStyle.bold24,
              )),
              const SizedBox(
                height: 80,
              ),
              Text(
                'Email Address',
                style: AppTextStyle.medium16,
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormFieldApp(
                controller: context
                    .read<SigninWithEmailAndPasswordCubit>()
                    .emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email is required";
                  } else if (!AppRegex.isEmailValid(value)) {
                    return "Please enter a valid email";
                  }
                  return null;
                },
                hintText: "Enter email address",
              ),
              const SizedBox(
                height: 32,
              ),
              ButtonApp(
                text: "Continue",
                onTap: () {
                  final form = context
                      .read<SigninWithEmailAndPasswordCubit>()
                      .formKeyEmail
                      .currentState;
                  if (form != null && form.validate()) {
                    Navigator.pushNamed(
                      context,
                      SiginViewPassword.routeName,
                      arguments:
                          context.read<SigninWithEmailAndPasswordCubit>(),
                    );
                  }
                },
              ),
              const SizedBox(
                height: 32,
              ),
              const CreateAccountWidget(),
              const CustomOrWidget(),
              const SocialLoginButtonWidget()
            ],
          ),
        ),
      ),
    );
  }
}
