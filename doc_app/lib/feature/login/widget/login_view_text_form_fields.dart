import 'package:doc_app/core/common/widget/custom_text_button.dart';
import 'package:doc_app/core/common/widget/custom_text_form_field.dart';
import 'package:doc_app/core/constant/app_strings.dart';
import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/core/theme/app_colors.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:doc_app/feature/login/widget/by_logging_you.dart';
import 'package:doc_app/feature/login/widget/remeber_me_and_forget_password.dart';
import 'package:flutter/material.dart';

class LoginViewTextFormFields extends StatefulWidget {
  const LoginViewTextFormFields({super.key});

  @override
  State<LoginViewTextFormFields> createState() =>
      _LoginViewTextFormFieldsState();
}

class _LoginViewTextFormFieldsState extends State<LoginViewTextFormFields> {
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(hintText: AppStrings.email),
        verticalSpace(16),
        CustomTextFormField(
          hintText: AppStrings.password,
          isObsecure: isObsecure,
          suffixIcon: StatefulBuilder(
            builder:
                (context, setState) => GestureDetector(
                  onTap:
                      () => setState(() {
                        isObsecure = !isObsecure;
                      }),
                  child: Icon(
                    isObsecure ? Icons.visibility_off : Icons.visibility,
                    color: AppColors.lightGrey,
                  ),
                ),
          ),
        ),
        verticalSpace(16),
        RememberMeAndForgetPassword(),
        verticalSpace(32),
        CustomTextButton(
          width: 327,
          height: 52,
          child: Text(
            AppStrings.login,
            style: AppTextStyle.interSemiBoldSize16White,
          ),
        ),
        verticalSpace(46),
        ByLoggingYouAgree(),
      ],
    );
  }
}
