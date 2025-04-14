import 'package:doc_app/core/common/widget/custom_text_button.dart';
import 'package:doc_app/core/constant/app_strings.dart';
import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:doc_app/feature/login/logic/cubit/login_cubit.dart';
import 'package:doc_app/feature/login/ui/widget/by_logging_you.dart';
import 'package:doc_app/feature/login/ui/widget/login_bloc_lisener.dart';
import 'package:doc_app/feature/login/ui/widget/remeber_me_and_forget_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginViewButtonAndText extends StatelessWidget {
  LoginViewButtonAndText({super.key});

  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    final loginCubitConroller = context.read<LoginCubit>();

    return Column(
      children: [
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
          onPressed: () => validateThenLogin(context, loginCubitConroller),
        ),
        verticalSpace(46),
        ByLoggingYouAgree(),
        LoginBlocLisener(),
      ],
    );
  }
}

validateThenLogin(BuildContext context, LoginCubit loginCubitConroller) {
  if (loginCubitConroller.formKey.currentState!.validate()) {
    loginCubitConroller.emitLoginState();
  } else {
    return;
  }
}
