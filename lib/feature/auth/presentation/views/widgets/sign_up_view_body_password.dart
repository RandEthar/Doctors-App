import 'package:doctors_app/feature/auth/presentation/views/widgets/custom_text_form_field_password.dart';
import 'package:flutter/material.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:doctors_app/core/widgets/button_app.dart';


import 'package:doctors_app/feature/auth/presentation/views/widgets/custom_or_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/have_account_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/pop_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/social_login_button_widget.dart';

class SignUpViewBodyPassword extends StatelessWidget {
  const SignUpViewBodyPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
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
            "Set Password",
            style: AppTextStyle.bold24,
          )),
          const SizedBox(
            height:56,
          ),
           Text(
              'New Password',
            style: AppTextStyle.medium16,
          ),
          const SizedBox(
            height: 12,
          ),
        // const   CustomTextFormFieldPassword(text: "New password" ,),
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
        //  const   CustomTextFormFieldPassword(text: "Confirm password" ,),
             const SizedBox(
            height: 32,
          ),
           ButtonApp(text:  "Sign Up",onTap: () {
            // Navigator.pushNamed(context, SiginViewPassword.routeName);
          },),
          const SizedBox(
            height: 32,
          ),const HaveAccountWidget(),
      
         const CustomOrWidget(),
        const SocialLoginButtonWidget()
        ],
      ),
    );
  }
}
