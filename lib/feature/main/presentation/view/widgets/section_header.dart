import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.text, this.onTap,
  });
  final String text;
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppTextStyle.bold18.copyWith(color: AppColor.darkerBlue),
        ),
        const Spacer(),
        GestureDetector(
          onTap:  onTap,
          child: Text(
            'See all',
            style: AppTextStyle.medium16.copyWith(color: AppColor.primary),
          ),
        ),
        const SizedBox(
          width: 24,
        ),
      ],
    );
  }
}
