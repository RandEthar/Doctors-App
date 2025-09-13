import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: ShapeDecoration(
            color: AppColor.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32))),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            text,
            style: AppTextStyle.bold16.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
