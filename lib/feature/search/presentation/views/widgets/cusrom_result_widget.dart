import 'package:doctors_app/core/util/app_text_style.dart';

import 'package:flutter/material.dart';

class CusromResultWidget extends StatelessWidget {
  const CusromResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(children: [
         const SizedBox(height: 24,),
            Text(
                  "Results",
                  style: AppTextStyle.bold18.copyWith(color: Colors.black),
                ),
                 const SizedBox(height: 24,),
                  const SizedBox(height: 16,),
        ],),
      ),
    );
  }
}