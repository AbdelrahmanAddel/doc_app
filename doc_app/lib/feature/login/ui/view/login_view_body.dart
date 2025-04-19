import 'package:doc_app/core/common/widget/custom_text_span.dart';
import 'package:doc_app/core/constant/app_strings.dart';
import 'package:doc_app/core/helper/naviagtor.dart';
import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/core/router/router_strings.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:doc_app/feature/login/ui/widget/emai_and_password.dart';
import 'package:doc_app/feature/login/ui/widget/login_view_button_and_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.welcomeBack,
            style: AppTextStyle.interBoldSize24PrimColor,
          ),
          verticalSpace(8),
          Text(
            AppStrings.weAreExcited,
            textAlign: TextAlign.start,
            style: AppTextStyle.interRegualarSize14Grey,
          ),
          verticalSpace(36),
          EmailAndPassword(),
          verticalSpace(10),
          LoginViewButtonAndText(),
          verticalSpace(26),
          Center(
            child: CustomTextSpan(
              firstText: AppStrings.dontHave,
              lastText: AppStrings.signUp,
              lastTextRecognizer:
                  TapGestureRecognizer()
                    ..onTap = () {
                      context.pushReplacementNamed(
                        routeName: RouterStrings.signUp,
                      );
                    },
            ),
          ),
        ],
      ),
    );
  }
}
