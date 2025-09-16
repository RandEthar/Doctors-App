import 'package:doctors_app/core/util/app_images.dart';
import 'package:doctors_app/core/widgets/text_form_field_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFormFieldPassword extends StatefulWidget {
  const CustomTextFormFieldPassword({
    super.key,
    required this.text,
    required this.controller,
    required this.validator,
  });
  final TextEditingController controller;
  final String text;
  final String? Function(String?) validator;
  @override
  State<CustomTextFormFieldPassword> createState() =>
      _CustomTextFormFieldPasswordState();
}

class _CustomTextFormFieldPasswordState
    extends State<CustomTextFormFieldPassword> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormFieldApp(
      controller: widget.controller,
      validator: widget.validator,
      obscureText: obscureText,
      suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          child: SvgPicture.asset(
              fit: BoxFit.scaleDown,
              obscureText ? Assets.imagesNonVisable : Assets.imagesVisible)),
      hintText: widget.text,
    );
  }
}
