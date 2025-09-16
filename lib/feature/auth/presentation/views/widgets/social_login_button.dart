import 'package:doctors_app/core/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({super.key, required this.icon});
  final String icon;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 28,
      backgroundColor: AppColor.lightGrey,
      child: SvgPicture.asset(icon),
    );
  }
}
