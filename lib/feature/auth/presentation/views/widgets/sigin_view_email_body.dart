import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:doctors_app/core/widgets/button_app.dart';
import 'package:doctors_app/core/widgets/text_form_field_app.dart';
import 'package:doctors_app/feature/auth/presentation/manger/sighin/signin_with_email_and_password_cubit.dart';
import 'package:doctors_app/feature/auth/presentation/views/sigin_view_password.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/create_account_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/custom_or_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/pop_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/social_login_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SiginViewEmailBody extends StatefulWidget {
  const SiginViewEmailBody({super.key});

  @override
  State<SiginViewEmailBody> createState() => _SiginViewEmailBodyState();
}

class _SiginViewEmailBodyState extends State<SiginViewEmailBody> {
    late TextEditingController emailController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController=context.read<SigninWithEmailAndPasswordCubit>().emailController;
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Form(
        key:context.read<SigninWithEmailAndPasswordCubit>().formKey ,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            PopWidget(),
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
            controller: emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Email is required"; 
              }
              return null; 
            },
            hintText: "Enter email address",
          ),
              const SizedBox(
                height: 32,
              ),
               ButtonApp(text: "Continue",onTap: () {
                Navigator.pushNamed(context, SiginViewPassword.routeName);
              },),
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

