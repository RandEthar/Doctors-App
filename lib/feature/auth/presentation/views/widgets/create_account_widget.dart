import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:doctors_app/feature/auth/presentation/views/sign_up_view_detuils.dart';
import 'package:flutter/material.dart';

class CreateAccountWidget extends StatelessWidget {
  const CreateAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textAlign: TextAlign.center,
          'Don\'t have an account?',
          style: AppTextStyle.regular14.copyWith(color: AppColor.darkGrey),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignUpView.routeName);
          },
          child: Text(
            textAlign: TextAlign.center,
            ' Create Account',
            style: AppTextStyle.regular16.copyWith(
              color: const Color(0xFF32384B),
            ),
          ),
        )
      ],
    );
  }
}
