import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomOrWidget extends StatelessWidget {
  const CustomOrWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Row(
        children: [
          const Expanded(
              child: Divider(
            color: AppColor.lightGrey,
            thickness: 1,
          )),
          Text(
            ' Or ',
            style: AppTextStyle.regular14.copyWith(color: AppColor.darkGrey),
          ),
          const Expanded(
              child: Divider(
            color: AppColor.lightGrey,
            thickness: 1,
          )),
        ],
      ),
    );
  }
}
