import 'package:doctors_app/core/util/app_images.dart';
import 'package:flutter/material.dart';

class CustomImageDoctor extends StatelessWidget {
  const CustomImageDoctor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: const ShapeDecoration(
        image: DecorationImage(
          image: AssetImage(
           Assets.imagesImageDoctor,
          ),
          fit: BoxFit.scaleDown,
        ),
        shape: OvalBorder(
          side: BorderSide(
            width: 1,
            color: Color(0xFFF4F4F6),
          ),
        ),
      ),
    );
  }
}
