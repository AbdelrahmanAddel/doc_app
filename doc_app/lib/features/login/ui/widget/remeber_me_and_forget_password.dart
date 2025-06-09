import 'package:doc_app/core/constant/app_strings.dart';
import 'package:doc_app/core/theme/app_colors.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class RememberMeAndForgetPassword extends StatefulWidget {
  const RememberMeAndForgetPassword({super.key});

  @override
  State<RememberMeAndForgetPassword> createState() =>
      _RememberMeAndForgetPasswordState();
}

class _RememberMeAndForgetPasswordState
    extends State<RememberMeAndForgetPassword> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        StatefulBuilder(
          builder:
              (context, setState) => Checkbox(
                activeColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                value: rememberMe,
                onChanged:
                    (_) => setState(() {
                      rememberMe = !rememberMe;
                    }),
              ),
        ),
        Text(
          AppStrings.rememberMe,
          style: AppTextStyle.interRegualarSize14MedGrey,
        ),
        Spacer(),
        Text(
          AppStrings.forgetPassword,
          style: AppTextStyle.interRegualarSize12PrimColor,
        ),
      ],
    );
  }
}
