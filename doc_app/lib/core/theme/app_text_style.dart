import 'package:doc_app/core/constant/fonts_strings.dart';
import 'package:doc_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static final TextStyle interW700Size32 = TextStyle(
    fontFamily: FontsStrings.interBold,
    fontWeight: FontWeight.w700,
    fontSize: 32,
    color: AppColors.primaryColor,
  );
  static final TextStyle font24W700Blac = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 30,
    color: Colors.black,
  );
  static final TextStyle interRegualar13W400 = TextStyle(
    fontFamily: FontsStrings.interRegular,

    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: AppColors.grey,
  );
  static final TextStyle interSemiBold18W600 = TextStyle(
    fontFamily: FontsStrings.semiBold,

    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: Colors.white,
  );
}
