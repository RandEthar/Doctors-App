import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:doctors_app/core/widgets/button_app.dart';
import 'package:doctors_app/feature/auth/presentation/manger/sighin/signin_with_email_and_password_cubit.dart';

import 'package:doctors_app/feature/auth/presentation/views/widgets/create_account_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/custom_or_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/custom_text_form_field_password.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/pop_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/social_login_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SiginViewPasswordBody extends StatefulWidget {
  const SiginViewPasswordBody({super.key});

  @override
  State<SiginViewPasswordBody> createState() => _SiginViewPasswordBodyState();
}

class _SiginViewPasswordBodyState extends State<SiginViewPasswordBody> {
  late TextEditingController passwordController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordController =
        context.read<SigninWithEmailAndPasswordCubit>().passwordController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SigninWithEmailAndPasswordCubit>().formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
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
              'Password',
              style: AppTextStyle.medium16,
            ),
            const SizedBox(
              height: 12,
            ),
            CustomTextFormFieldPassword(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Password is required";
                }
                return null;
              },
              controller: passwordController,
              text: "Enter Password",
            ),
            const SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                textAlign: TextAlign.end,
                'Forgot password?',
                style: AppTextStyle.medium16.copyWith(
                  color: const Color(0xFF32384B),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const ButtonApp(text: "Sign In"),
            const SizedBox(
              height: 32,
            ),
            const CreateAccountWidget(),
            const CustomOrWidget(),
            const SocialLoginButtonWidget()
          ],
        ),
      ),
    );
  }
}
