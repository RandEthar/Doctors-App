import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:doctors_app/feature/auth/presentation/views/sigin_view_email.dart';
import 'package:flutter/material.dart';

class HaveAccountWidget extends StatelessWidget {
  const HaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
           Text(
      textAlign: TextAlign.center,
    'Already have an account? ',
      style: AppTextStyle.regular14.copyWith(
        color: AppColor.darkGrey 
      ),
    ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, SiginViewEmail.routeName);
          },
          child: Text(
                textAlign: TextAlign.center,
              ' Sign In',
                style: AppTextStyle.regular16.copyWith(
                 color:   const Color(0xFF32384B),
                ),
              ),
        )
      ],
    );
  }
}
