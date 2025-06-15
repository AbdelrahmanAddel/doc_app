import 'package:doc_app/core/constant/app_strings.dart';
import 'package:doc_app/core/constant/assets_strings.dart';
import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorContainerBackgoundAndText extends StatelessWidget {
  const DoctorContainerBackgoundAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 15.h),

      width: double.infinity,
      height: 170.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.svgDoctorContainerBackGroundImage),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            AppStrings.bookAndSc,
            style: AppTextStyle.interMeduinSize18White,
          ),
          verticalSpace(15),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(48.r),
                ),
              ),
              onPressed: () {},
              child: Text(
                AppStrings.findNearBy,
                style: AppTextStyle.interRegualarSize12PrimColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
