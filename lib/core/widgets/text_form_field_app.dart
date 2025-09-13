import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:flutter/material.dart';

class TextFormFieldApp extends StatelessWidget {
  const TextFormFieldApp({super.key, required this.hintText, this.suffixIcon});
  final String hintText;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          filled: true,
          fillColor: AppColor.backgroundGrey,
          hintText: hintText,
          hintStyle: AppTextStyle.regular16,
          suffixIcon: suffixIcon,
          disabledBorder: buildOutlineInputBorder(),
          focusedBorder:buildOutlineInputBorder(),
          enabledBorder: buildOutlineInputBorder(),),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: AppColor.lightGrey));
  }
}
