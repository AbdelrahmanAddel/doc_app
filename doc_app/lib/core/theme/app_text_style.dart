import 'package:doc_app/core/constant/fonts_strings.dart';
import 'package:doc_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static final TextStyle interBoldSize32PrimColor = TextStyle(
    fontFamily: FontsStrings.interBold,
    fontSize: 32.sp,
    color: AppColors.primaryColor,
  );
  static final TextStyle interSemiBoldSize11PrimColor = TextStyle(
    fontFamily: FontsStrings.semiBold,
    fontSize: 11.sp,
    color: AppColors.primaryColor,
  );
  static final TextStyle interBoldSize24PrimColor = TextStyle(
    fontFamily: FontsStrings.interBold,
    fontSize: 24.sp,
    color: AppColors.primaryColor,
  );
  static final TextStyle font24W700Blac = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 30.sp,
    color: Colors.black,
  );
  static final TextStyle font13W500Blac = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 13.sp,
    color: Colors.black,
  );
  static final TextStyle interRegualarSize14Grey = TextStyle(
    fontFamily: FontsStrings.interRegular,

    fontSize: 14.sp,
    color: AppColors.grey,
  );
  static final TextStyle interRegualarSize13Black = TextStyle(
    fontFamily: FontsStrings.interRegular,

    fontSize: 13.sp,
    color: Colors.black,
  );
  static final TextStyle interRegualarSize11MeduimGrey = TextStyle(
    fontFamily: FontsStrings.interRegular,

    fontSize: 14.sp,
    color: AppColors.mediumGrey,
  );
  static final TextStyle interRegualarSize12PrimColor = TextStyle(
    fontFamily: FontsStrings.interRegular,

    fontSize: 12.sp,
    color: AppColors.primaryColor,
  );
  static final TextStyle interRegualarSize14MedGrey = TextStyle(
    fontFamily: FontsStrings.interRegular,

    fontSize: 14.sp,
    color: AppColors.mediumGrey,
  );
  static final TextStyle interSemiBoldSize18White = TextStyle(
    fontFamily: FontsStrings.semiBold,

    fontSize: 18.sp,
    color: Colors.white,
  );
  static final TextStyle interSemiBoldSize16White = TextStyle(
    fontFamily: FontsStrings.semiBold,

    fontSize: 16.sp,
    color: Colors.white,
  );
  static final TextStyle interMeduinSize14LightGrey = TextStyle(
    fontFamily: FontsStrings.interMeduim,

    fontSize: 14.sp,
    color: AppColors.lightGrey,
  );
  static final TextStyle interMeduinSize14DarkBlue = TextStyle(
    fontFamily: FontsStrings.interMeduim,

    fontSize: 14.sp,
    color: AppColors.darkBlue,
  );
}
