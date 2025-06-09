import 'package:flutter/material.dart';
import 'package:doc_app/core/common/widget/custom_build_validation_row.dart';
import 'package:doc_app/core/constant/app_strings.dart';
import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/feature/sign_up/logic/cubit/sign_up_cubit.dart';

class SignUpValidationColumn extends StatefulWidget {
  const SignUpValidationColumn({super.key, required this.signUpCubitContoller});

  final SignUpCubit signUpCubitContoller;

  @override
  State<SignUpValidationColumn> createState() => _SignUpValidationColumnState();
}

class _SignUpValidationColumnState extends State<SignUpValidationColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(
          hasValid: widget.signUpCubitContoller.hasLowerCase,
          text: AppStrings.atLeastOneLowercase,
        ),
        verticalSpace(2),
        buildValidationRow(
          hasValid: widget.signUpCubitContoller.hasNumber,
          text: AppStrings.atLeastOneNumber,
        ),
        verticalSpace(2),
        buildValidationRow(
          hasValid: widget.signUpCubitContoller.hasSpecialCharacters,
          text: AppStrings.atLeastOneSpecialCharacter,
        ),
        verticalSpace(2),
        buildValidationRow(
          hasValid: widget.signUpCubitContoller.hasUpperCase,
          text: AppStrings.atLeastOneUppercase,
        ),
        verticalSpace(2),
        buildValidationRow(
          hasValid: widget.signUpCubitContoller.hasMinLength,
          text: AppStrings.hasMinLength,
        ),
      ],
    );
  }
}
