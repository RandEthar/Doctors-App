import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/core/util/app_images.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:doctors_app/feature/main/domain/entites/categories_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCategoryItemWidget extends StatelessWidget {
  const CustomCategoryItemWidget({super.key, required this.category});
  final CategoriesEntity category;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: 72,
      decoration: ShapeDecoration(
        color: AppColor.lightBlueBackground,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                category.image,
                height: 28,
                width: 28,
                fit: BoxFit.fill,
              ),
              // const SizedBox(
              //   height: 4,
              // ),
              Text(
                category.name,
                style:
                    AppTextStyle.regular14.copyWith(color: AppColor.darkBlue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
