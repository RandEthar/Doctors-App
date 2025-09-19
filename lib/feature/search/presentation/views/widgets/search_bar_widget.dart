import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/core/util/app_images.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColor.blueGreyAlt,
      decoration: InputDecoration(
        labelStyle: AppTextStyle.semiBold14.copyWith(
          color: Colors.black
        ),
          hintText: 'Search for doctors',
         hintStyle:
              AppTextStyle.medium16.copyWith(color: AppColor.blueGreyAlt),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(
              right: 24,
              top: 12,
              bottom: 33,
            ),
            child: SvgPicture.asset(
              Assets.imagesClose,
              height: 28,
              width: 28,
              fit: BoxFit.scaleDown,
            ),
          ),
          contentPadding: const EdgeInsets.only(top: 12, bottom: 33),
          prefixIcon: Padding(
            padding:
                const EdgeInsets.only(top: 12, bottom: 33, left: 24, right: 16),
            child: SvgPicture.asset(
              Assets.imagesSearch,
              height: 28,
              width: 28,
              fit: BoxFit.scaleDown,
            ),
          )
          ,  border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 0),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 0),
        ),
        focusedBorder:const UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 229, 229, 231), width: 8),
        ),
          
          ),
    );
  }
}
