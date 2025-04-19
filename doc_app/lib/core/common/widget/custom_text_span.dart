import 'package:doc_app/core/theme/app_colors.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomTextSpan extends StatelessWidget {
  CustomTextSpan({
    super.key,
    this.firstTextRecognizer,
    this.lastTextRecognizer,
    required this.firstText,
    required this.lastText,
  });
  final String firstText;
  final String lastText;
  GestureRecognizer? firstTextRecognizer;
  GestureRecognizer? lastTextRecognizer;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            recognizer: firstTextRecognizer,
            text: firstText,
            style: AppTextStyle.interRegualarSize11MeduimGrey.copyWith(
              color: AppColors.darkBlue,
            ),
          ),
          TextSpan(
            recognizer: lastTextRecognizer,
            text: lastText,
            style: AppTextStyle.interSemiBoldSize11PrimColor,
          ),
        ],
      ),
    );
  }
}
