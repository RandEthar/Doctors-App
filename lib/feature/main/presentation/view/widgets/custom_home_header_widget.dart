import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/core/util/app_images.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomHomeHeaderWidegt extends StatelessWidget {
  const CustomHomeHeaderWidegt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.imagesPic,
          height: 48,
          width: 48,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          children: [
            Text(
              "Welcome Back",
              style: AppTextStyle.regular14.copyWith(color: AppColor.darkGrey),
            ),
            Text(
              'Andrew Smith',
              style: AppTextStyle.regular14.copyWith(color: AppColor.darkBlue),
            ),
          ],
        ),
        const Spacer(),
        SvgPicture.asset(
          Assets.imagesSearch,
          height: 28,
          width: 28,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          width: 24,
        ),
        SvgPicture.asset(
          Assets.imagesFavorite,
          height: 24,
          width: 24,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          width: 28,
        ),
      ],
    );
  }
}
