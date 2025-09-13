import 'package:doctors_app/core/util/app_images.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/social_login_button.dart';
import 'package:flutter/material.dart';

class SocialLoginButtonWidget extends StatelessWidget {
  const SocialLoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialLoginButton(
          icon: Assets.imagesGoogle,
        ),
        SizedBox(
          width: 24,
        ),
        SocialLoginButton(
          icon: Assets.imagesFacebook,
        ),
        SizedBox(
          width: 24,
        ),
        SocialLoginButton(
          icon: Assets.imagesApple,
        )
      ],
    );
  }
}
