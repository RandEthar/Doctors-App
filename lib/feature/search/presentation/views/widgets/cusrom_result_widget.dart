import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';
import 'package:doctors_app/feature/search/presentation/views/widgets/result_list_view.dart';

import 'package:flutter/material.dart';

class CusromResultWidget extends StatelessWidget {
  const CusromResultWidget({super.key, required this.doctors});
 final List<DoctorEntity> doctors;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
             
          Text(
                "Results",
                style: AppTextStyle.bold18.copyWith(color: Colors.black),
              ),
               const SizedBox(height: 24,),
               ResultListView(doctors:doctors),
                const SizedBox(height: 16,),
      ],),
    );
  }
}