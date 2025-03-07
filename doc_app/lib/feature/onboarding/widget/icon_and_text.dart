import 'package:doc_app/core/constant/app_strings.dart';
import 'package:doc_app/core/helper/naviagtor.dart';
import 'package:doc_app/core/router/router_strings.dart';
import 'package:doc_app/core/theme/app_colors.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconAndText extends StatelessWidget {
  const IconAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.0.w),
      child: Column(
        children: [
          Text(
            textAlign: TextAlign.center,
            AppStrings.manageAndS,
            style: AppTextStyle.interRegualarSize14Grey,
          ),
          SizedBox(height: 32.h),
          TextButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(AppColors.primaryColor),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              minimumSize: WidgetStateProperty.all(Size(double.infinity, 52.h)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0.r),
                ),
              ),
            ),
            onPressed: () {
              context.pushReplacementNamed(routeName: RouterStrings.login);
            },
            child: Text(
              AppStrings.getStarted,
              style: AppTextStyle.interSemiBoldSize18White,
            ),
          ),
        ],
      ),
    );
  }
}
