import 'package:doc_app/core/common/widget/custom_text_form_field.dart';
import 'package:doc_app/core/constant/app_strings.dart';
import 'package:doc_app/core/helper/app_regex.dart';
import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpTextFromFields extends StatelessWidget {
  const SignUpTextFromFields({super.key});

  @override
  Widget build(BuildContext context) {
    final signUpContoller = context.read<SignUpCubit>();

    return Form(
      key: signUpContoller.formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: AppStrings.name,
            controller: signUpContoller.nameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return AppStrings.nameError;
              } else {
                return null;
              }
            },
          ),
          verticalSpace(16),
          CustomTextFormField(
            hintText: AppStrings.email,
            controller: signUpContoller.emailController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return AppStrings.pleaseEnterValidEmail;
              } else {
                return null;
              }
            },
          ),
          verticalSpace(16),
          CustomTextFormField(
            hintText: AppStrings.phone,
            controller: signUpContoller.phoneController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return AppStrings.pleaseEnterValidPhone;
              } else {
                return null;
              }
            },
          ),
          verticalSpace(16),
          CustomTextFormField(
            hintText: AppStrings.password,
            controller: signUpContoller.passwordController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return AppStrings.pleaseEnterValidPassword;
              } else {
                return null;
              }
            },
          ),
          verticalSpace(16),
          CustomTextFormField(
            hintText: AppStrings.confirmPassword,
            controller: signUpContoller.confirmPasswordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return AppStrings.pleaseEnterValidPassword;
              } else if (signUpContoller.passwordController.text != value) {
                return AppStrings.errorPasswordMismatch;
              } else {
                return null;
              }
            },
          ),
        ],
      ),
    );
  }
}
