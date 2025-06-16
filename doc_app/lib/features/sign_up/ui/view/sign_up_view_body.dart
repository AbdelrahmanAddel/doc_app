import 'package:doc_app/core/common/widget/custom_text_span.dart';
import 'package:doc_app/core/constant/app_strings.dart';
import 'package:doc_app/core/helper/extensions.dart';
import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/core/router/router_strings.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:doc_app/features/sign_up/ui/widget/sign_up_button_and_text.dart';
import 'package:doc_app/features/sign_up/ui/widget/sign_up_text_form_fields.dart';
import 'package:doc_app/features/sign_up/ui/widget/sign_up_validation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(50),
            Text(
              AppStrings.createAccount,
              style: AppTextStyle.interBoldSize24PrimColor,
            ),
            verticalSpace(8),
            Text(
              AppStrings.signUpNow,
              style: AppTextStyle.interRegualarSize14Grey,
            ),
            verticalSpace(17),
            SignUpTextFromFields(),
            verticalSpace(10),
            SignUpValidation(),
            verticalSpace(32),
            SignUpButtonAndText(),
            verticalSpace(24),
            Center(
              child: CustomTextSpan(
                firstText: AppStrings.alreadyHave,
                lastText: AppStrings.signIn,
                lastTextRecognizer:
                    TapGestureRecognizer()
                      ..onTap = () {
                        context.pushReplacementNamed(
                          routeName: RouterStrings.login,
                        );
                      },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
