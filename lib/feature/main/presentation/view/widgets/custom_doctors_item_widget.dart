import 'package:doctors_app/core/util/app_colors.dart';

import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:doctors_app/core/widgets/button_app.dart';
import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/custom_image_doctor_Widget.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/rating_and_date_widget.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/toggle_favorite_widget.dart';
import 'package:flutter/material.dart';

class CustomDoctorsItemWidget extends StatelessWidget {
  const CustomDoctorsItemWidget({super.key, required this.doctor});
final DoctorEntity doctor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        // color: Colors.amber,
        color: AppColor.backgroundGrey,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: AppColor.lightGrey)),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageDoctor(),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                          doctor.name??"",
                            style: AppTextStyle.semiBold14
                                .copyWith(color: AppColor.darkBlue),
                          ),
                          Text(
                            '${doctor.specialty} | Mercy Hospital',
                            style: AppTextStyle.regular14
                                .copyWith(color: AppColor.blueGrey),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          RatingandDateWidget(doctor: doctor,),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              const ToggelFavorite(),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const ButtonApp(
            hight: 40,
            textColor: AppColor.primary,
            backgroundColor: AppColor.blueGrayLight,
            text: "Book Appointment",
          )
        ],
      ),
    );
  }
}
