import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/core/util/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ToggelFavorite extends StatefulWidget {
  const ToggelFavorite({
    super.key,
  });

  @override
  State<ToggelFavorite> createState() => _ToggelFavoriteState();
}

class _ToggelFavoriteState extends State<ToggelFavorite> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isFav = !isFav;
          });
        },
        child: SvgPicture.asset(
          isFav ? Assets.imagesIsfav : Assets.imagesFavorite,
          color: AppColor.red,
          height: 20,
          width: 20,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
