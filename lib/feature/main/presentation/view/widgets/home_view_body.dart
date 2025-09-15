import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/core/util/app_images.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/custom_home_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding:EdgeInsets.only(top: 8,left: 24),
        child: Column(
          children: [
            CustomHomeHeaderWidegt(),
              SizedBox(height:40,),
            
        
          ],
        ),
      ),
    );
  }
}
