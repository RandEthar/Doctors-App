import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/core/util/app_images.dart';
import 'package:doctors_app/core/util/app_text_style.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';






class RatingandDateWidget extends StatelessWidget {
  const RatingandDateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '4.8',
          style: AppTextStyle.medium14
              .copyWith(color: AppColor.darkerBlue),
        ),
        const SizedBox(
          width: 4,
        ),
        SvgPicture.asset(
          Assets.imagesStar,
          height: 16,
          width: 16,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          width: 24,
        ),
        Row(
          children: [
            SvgPicture.asset(
              Assets.imagesCalender,
              height: 16,
              width: 16,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              '10:30am - 5:30pm',
              style: AppTextStyle.medium14
                  .copyWith(color: AppColor.blueGrayDark),
            )
          ],
        )
      ],
    );
  }
}