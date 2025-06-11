import 'package:doc_app/features/sign_up/ui/widget/sign_up_validation_column.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/core/helper/app_regex.dart';
import 'package:doc_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpValidation extends StatefulWidget {
  const SignUpValidation({super.key});

  @override
  State<SignUpValidation> createState() => _SignUpValidationState();
}

class _SignUpValidationState extends State<SignUpValidation> {
  @override
  void initState() {
    super.initState();

    passwordLister();
  }

  @override
  void dispose() {
    context.read<SignUpCubit>().passwordController.dispose();
    super.dispose();
  }

  void passwordLister() {
    final signUpCubitContoller = context.read<SignUpCubit>();
    final passwordConroller = signUpCubitContoller.passwordController;
    signUpCubitContoller.passwordController.addListener(() {
      setState(() {
        signUpCubitContoller.hasLowerCase = AppRegex.hasLowerCase(
          passwordConroller.text,
        );
        signUpCubitContoller.hasUpperCase = AppRegex.hasUpperCase(
          passwordConroller.text,
        );
        signUpCubitContoller.hasNumber = AppRegex.hasNumber(
          passwordConroller.text,
        );
        signUpCubitContoller.hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordConroller.text);
        signUpCubitContoller.hasMinLength = AppRegex.hasMinLength(
          passwordConroller.text,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SignUpValidationColumn(
      signUpCubitContoller: context.read<SignUpCubit>(),
    );
  }
}
