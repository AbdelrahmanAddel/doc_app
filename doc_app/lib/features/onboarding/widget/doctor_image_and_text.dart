import 'package:doc_app/core/constant/app_strings.dart';
import 'package:doc_app/core/constant/assets_strings.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(Assets.svgOnboardingdocLogo),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white.withOpacity(0.0), Colors.white],
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              stops: [0, 1],
            ),
          ),
          child: Image.asset(Assets.imagesImage),
        ),
        Positioned(
          right: 57.w,
          left: 72.w,
          bottom: 25.h,
          child: Text(
            AppStrings.bestDoctor,
            style: AppTextStyle.interBoldSize32PrimColor.copyWith(height: 1.5),
          ),
        ),
      ],
    );
  }
}
