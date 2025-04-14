import 'package:doc_app/core/common/widget/custom_build_validation_row.dart';
import 'package:doc_app/core/constant/app_strings.dart';
import 'package:doc_app/core/helper/spaceing.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasNumber,
    required this.hasSpecialCharacters,
    required this.hasMinLength,
  });
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialCharacters;
  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(
          hasValid: hasLowerCase,
          text: AppStrings.atLeastOneLowercase,
        ),
        verticalSpace(2),
        buildValidationRow(
          hasValid: hasNumber,
          text: AppStrings.atLeastOneNumber,
        ),
        verticalSpace(2),
        buildValidationRow(
          hasValid: hasSpecialCharacters,
          text: AppStrings.atLeastOneSpecialCharacter,
        ),
        verticalSpace(2),
        buildValidationRow(
          hasValid: hasUpperCase,
          text: AppStrings.atLeastOneUppercase,
        ),
        verticalSpace(2),
        buildValidationRow(
          hasValid: hasMinLength,
          text: AppStrings.hasMinLength,
        ),
      ],
    );
  }
}
