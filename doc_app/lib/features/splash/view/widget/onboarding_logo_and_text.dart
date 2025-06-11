import 'package:doc_app/core/constant/app_strings.dart';
import 'package:doc_app/core/constant/assets_strings.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingLogoAndText extends StatelessWidget {
  const OnBoardingLogoAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.svgSplashLogo),
          SizedBox(width: 15.w),
          Text(
            AppStrings.docDoc,
            style: AppTextStyle.font24W700Blac.copyWith(fontSize: 50),
          ),
        ],
      ),
    );
  }
}
