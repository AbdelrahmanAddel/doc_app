import 'package:doc_app/core/constant/app_strings.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class ByLoggingYouAgree extends StatelessWidget {
  const ByLoggingYouAgree({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: AppStrings.bylogging,
            style: AppTextStyle.interRegualarSize11MeduimGrey,
          ),
          TextSpan(
            text: AppStrings.termAndCondition,
            style: AppTextStyle.font13W500Blac,
          ),
          TextSpan(
            text: AppStrings.and,
            style: AppTextStyle.interRegualarSize11MeduimGrey,
          ),

          TextSpan(
            text: AppStrings.privacyPolicy,
            style: AppTextStyle.font13W500Blac,
          ),
        ],
      ),
    );
  }
}
