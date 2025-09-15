import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:doctors_app/feature/main/domain/entites/nav_bar_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.bounceOut,
      duration:const Duration(milliseconds: 300),
      height: 80,
      width: double.infinity,
      color: AppColor.primary,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: navBarList.asMap().entries.map((entry) {
          int index = entry.key;
          NavBarEntity value = entry.value;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Column(
              children: [
                SvgPicture.asset(
                  fit: BoxFit.fill,
                  value.image,
                  height: 24,
                  width: 24,
                    color:   index==selectedIndex?Colors.white:AppColor.softBlue
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  value.name,
                  style: AppTextStyle.regular14.copyWith(
                  color:   index==selectedIndex?Colors.white:AppColor.softBlue
                  ),
                )
              ],
            ),
          );
        }).toList()),
      ),
    );
  }
}
