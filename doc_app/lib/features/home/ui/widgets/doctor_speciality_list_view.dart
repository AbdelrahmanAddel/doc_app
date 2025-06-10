import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/core/theme/app_colors.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 86.h,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              CircleAvatar(
                radius: 28.r,
                backgroundColor: AppColors.veryLightBlue,
                child: Icon(Icons.person, size: 30),
              ),
              verticalSpace(12),
              Text(
                "General",
                style: AppTextStyle.interRegualarSize12PrimColor.copyWith(
                  color: AppColors.darkBlue,
                ),
              ),
            ],
          );
        },
        separatorBuilder:
            (BuildContext context, int index) => horizontalSpace(16),
        itemCount: 8,
      ),
    );
  }
}
