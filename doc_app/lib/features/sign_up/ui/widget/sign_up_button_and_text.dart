import 'package:doc_app/core/common/widget/custom_text_button.dart';
import 'package:doc_app/core/constant/app_strings.dart';
import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:doc_app/features/login/ui/widget/by_logging_you.dart';
import 'package:doc_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doc_app/features/sign_up/ui/widget/sign_up_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpButtonAndText extends StatelessWidget {
  const SignUpButtonAndText({super.key});

  @override
  Widget build(BuildContext context) {
    final signUpController = context.read<SignUpCubit>();
    return Column(
      children: [
        CustomTextButton(
          onPressed: () => validateThenSignUp(signUpController),
          width: double.infinity,
          height: 52.h,
          child: Text(
            AppStrings.createAccount,
            style: AppTextStyle.interSemiBoldSize16White,
          ),
        ),
        verticalSpace(46),
        ByLoggingYouAgree(),
        SignUpBlocListener(),
      ],
    );
  }
}

void validateThenSignUp(SignUpCubit signUpController) {
  if (signUpController.formKey.currentState!.validate()) {
    signUpController.emitSignUpState();
  } else {
    return;
  }
}
