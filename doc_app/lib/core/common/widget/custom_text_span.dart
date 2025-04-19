import 'package:doc_app/core/theme/app_colors.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild({
    super.key,
    required this.firstText,
    required this.lastText,
  });
  final String firstText;
  final String lastText;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: firstText,
            style: AppTextStyle.interRegualarSize11MeduimGrey.copyWith(
              color: AppColors.darkBlue,
            ),
          ),
          TextSpan(
            text: lastText,
            style: AppTextStyle.interSemiBoldSize11PrimColor,
          ),
        ],
      ),
    );
  }
}
