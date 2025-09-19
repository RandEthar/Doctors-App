import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:doctors_app/feature/main/domain/entites/categories_entity.dart';
import 'package:doctors_app/feature/main/presentation/manger/doctors_cubit/doctors_cubit.dart';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryGridView extends StatefulWidget {
  const CategoryGridView({super.key});

  @override
  State<CategoryGridView> createState() => _CategoryGridViewState();
}

class _CategoryGridViewState extends State<CategoryGridView> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 4,
      alignment: WrapAlignment.start,
      children: specializations.asMap().entries.map((entry) {
        final index = entry.key;
        final cat = entry.value;
        return GestureDetector(
          onTap: () {
            context
                .read<DoctorsCubit>()
                .fetchDoctorsBySpcialization(index: index+1);
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            decoration: ShapeDecoration(
              color: AppColor.lightBlueBackground,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 2,
                    color: selectedIndex == index
                        ? AppColor.primary
                        : AppColor.lightBlueBackground),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Text(
              cat,
              style: AppTextStyle.medium14.copyWith(color: AppColor.darkBlue),
            ),
          ),
        );
      }).toList(),
    );
  }
}
