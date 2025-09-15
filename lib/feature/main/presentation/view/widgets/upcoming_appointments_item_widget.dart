import 'package:doctors_app/core/util/app_colors.dart';
import 'package:doctors_app/core/util/app_images.dart';
import 'package:doctors_app/core/util/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UpcomingAppointmentsItemWidget extends StatelessWidget {
  const UpcomingAppointmentsItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132,
      width: 218,
      decoration: const ShapeDecoration(
          color: AppColor.primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)))),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        Assets.imagesPic,
                      ),
                      fit: BoxFit.scaleDown,
                    ),
                    shape: OvalBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFFF4F4F6),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jason Smith",
                      style:
                          AppTextStyle.semiBold14.copyWith(color: Colors.white),
                    ),
                    Text(
                      'Dentist',
                      style: AppTextStyle.medium14
                          .copyWith(color: AppColor.softBlue),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Text(
                          '4.8',
                          style: AppTextStyle.medium14
                              .copyWith(color: Colors.white),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        SvgPicture.asset(
                          Assets.imagesStar,
                          height: 16,
                          width: 16,
                          fit: BoxFit.fill,
                        )
                      ],
                    )
                  ],
                ),
                const Spacer(),
                SvgPicture.asset(
                  Assets.imagesKebab,
                  height: 20,
                  width: 20,
                  fit: BoxFit.fill,
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Row(children: [
                           SvgPicture.asset(
                      Assets.imagesCalender ,
                      height: 18,
                      width:18,
                      fit: BoxFit.fill,
                    ),
                const    SizedBox(width: 8,),
                       Text(
                             "5 Oct",
                              style: AppTextStyle.semiBold14
                                  .copyWith(color: Colors.white),
                            ),
                
                
                
                ],),  const Spacer(),
                   Row(children: [
                           SvgPicture.asset(
                      Assets.imagesTime ,
                      height: 18,
                      width:18,
                      fit: BoxFit.fill,
                    ),
                const    SizedBox(width: 8,),
                       Text(
                                '10:30pm',
                              style: AppTextStyle.semiBold14
                                  .copyWith(color: Colors.white),
                            ),

                ],),
              ],
            )

          ],
        ),
      ),
    );
  }
}
