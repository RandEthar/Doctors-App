import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/core/util/app_images.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:doctors_app/core/widgets/button_app.dart';
import 'package:doctors_app/core/widgets/text_form_field_app.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/create_account_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/custom_or_widget.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/social_login_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SiginViewEmailBody extends StatelessWidget {
  const SiginViewEmailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            Assets.imagesArrow,
            height: 24,
            width: 24,
            fit: BoxFit.fill,
          ),
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
          const TextFormFieldApp(
            hintText: "Enter email address",
          ),
          const SizedBox(
            height: 32,
          ),
          const ButtonApp(text: "Continue"),
          const SizedBox(
            height: 32,
          ),
          const CreateAccountWidget(),
         const CustomOrWidget(),
        const SocialLoginButtonWidget()
        ],
      ),
    );
  }
}

