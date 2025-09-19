import 'package:doctors_app/core/helpers/format_time.dart';
import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/core/util/app_images.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:doctors_app/feature/main/domain/entites/doctor_entity.dart';
import 'package:doctors_app/feature/main/presentation/view/widgets/custom_image_doctor_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UpcomingAppointmentsItemWidget extends StatelessWidget {
  const UpcomingAppointmentsItemWidget({super.key, required this.doctor});
  final DoctorEntity doctor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132,
      width: 218,
      decoration: const ShapeDecoration(
        color: AppColor.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// ---- Doctor info ----
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomImageDoctor(),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctor.name ?? "",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.semiBold14.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        doctor.specialty ?? "",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.medium14.copyWith(
                          color: AppColor.softBlue,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '4.8',
                            style: AppTextStyle.medium14.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 4),
                          SvgPicture.asset(
                            Assets.imagesStar,
                            height: 16,
                            width: 16,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SvgPicture.asset(
                  Assets.imagesKebab,
                  height: 20,
                  width: 20,
                ),
              ],
            ),

            const Spacer(),

            /// ---- Date & Time ----
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              const  _InfoRow(
                  icon: Assets.imagesCalender,
                  text: "5 Oct",
                ),
                _InfoRow(
                  icon: Assets.imagesTime,
                  text: formatTime(text: doctor.startTime),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// 🔹 Small reusable widget for icon + text
class _InfoRow extends StatelessWidget {
  final String icon;
  final String text;

  const _InfoRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon, height: 18, width: 18),
        const SizedBox(width: 8),
        Text(
          text,
          style: AppTextStyle.semiBold14.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}

