import 'package:doc_app/core/constant/assets_strings.dart';
import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/core/theme/app_colors.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationDoctorListViewContent extends StatelessWidget {
  const RecommendationDoctorListViewContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.imagesDoctorImage, width: 110.w, height: 110.h),

        horizontalSpace(12),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dr. Randy Wigham",
              style: AppTextStyle.interBoldSize18BDarkBlueColor.copyWith(
                fontSize: 16.sp,
              ),
            ),
            verticalSpace(4),
            Text(
              "RSUD Gatot Subroto",
              style: AppTextStyle.interRegualarSize12PrimColor.copyWith(
                color: AppColors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
