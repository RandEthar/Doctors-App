import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/core/util/app_images.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:doctors_app/feature/search/presentation/manger/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  late TextEditingController controller;
  @override
  void initState() {

    super.initState();
    controller=TextEditingController();
    controller.addListener((){
        setState(() {
          
        });
    });

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) => context.read<SearchCubit>().searchDoctorByName(name: value),
      controller:controller,
      cursorColor: AppColor.blueGreyAlt,
      decoration: InputDecoration(
        labelStyle: AppTextStyle.semiBold14.copyWith(
          color: Colors.black
        ),
          hintText: 'Search for doctors',
         hintStyle:
              AppTextStyle.medium16.copyWith(color: AppColor.blueGreyAlt),
          suffixIcon: Visibility(
            visible: controller.text.isNotEmpty,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 24,
                top: 12,
                bottom: 33,
              ),
              child: GestureDetector(
                onTap: (){
                  controller.clear();
                },
                child: SvgPicture.asset(
                  Assets.imagesClose,
                  height: 28,
                  width: 28,
                  fit: BoxFit.scaleDown,
                ),
              ),
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
