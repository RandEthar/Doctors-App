import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomCategoryItemWidget extends StatefulWidget {
  const CustomCategoryItemWidget({super.key, required this.specialization, required this.index});
  final String specialization ;
final int index;
  @override
  State<CustomCategoryItemWidget> createState() => _CustomCategoryItemWidgetState();
}

class _CustomCategoryItemWidgetState extends State<CustomCategoryItemWidget> {
  int selectedIndex=-1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         setState(() {
                  selectedIndex=widget.index;
         });
      },
      child: Container(
              
        decoration: ShapeDecoration(
          
          color: AppColor.lightBlueBackground,
          shape: RoundedRectangleBorder(
            side:BorderSide(
              color:selectedIndex==widget.index? AppColor.primary:AppColor.lightBlueBackground
            ),
            borderRadius: BorderRadius.circular(16)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
          child: Text(
               widget.specialization,
                style:
                    AppTextStyle.medium14.copyWith(color: AppColor.darkBlue),
              ),
        )
          ),
    );
    
  }
}
