import 'package:doctors_app/core/util/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PopWidget extends StatelessWidget {
  const PopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: SvgPicture.asset(
        Assets.imagesArrow,
        height: 24,
        width: 24,
        fit: BoxFit.fill,
      ),
    );
  }
}
