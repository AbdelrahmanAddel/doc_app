import 'package:doc_app/core/constant/app_strings.dart';
import 'package:doc_app/core/constant/assets_strings.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.svgDocLogo),
        SizedBox(width: 10.w),
        Text(AppStrings.docDoc, style: AppTextStyle.font24W700Blac),
      ],
    );
  }
}
