import 'package:doc_app/core/common/widget/custom_password_validation.dart';
import 'package:doc_app/core/common/widget/custom_text_form_field.dart';
import 'package:doc_app/core/constant/app_strings.dart';
import 'package:doc_app/core/helper/app_regex.dart';
import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/core/theme/app_colors.dart';
import 'package:doc_app/feature/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  late TextEditingController passwordContoller;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialCharacters = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    passwordContoller = context.read<LoginCubit>().passwordController;
    setUpPasswordControllerListener();
  }

  @override
  void dispose() {
    passwordContoller.dispose();
    super.dispose();
  }

  void setUpPasswordControllerListener() {
    passwordContoller.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordContoller.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordContoller.text);
        hasNumber = AppRegex.hasNumber(passwordContoller.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(
          passwordContoller.text,
        );
        hasMinLength = AppRegex.hasMinLength(passwordContoller.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final loginCubitConroller = context.read<LoginCubit>();

    return Form(
      key: loginCubitConroller.formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: AppStrings.email,
            controller: loginCubitConroller.emailController,
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
            hintText: AppStrings.password,
            isObsecure: loginCubitConroller.isObsecure,
            suffixIcon: StatefulBuilder(
              builder:
                  (context, setState) => GestureDetector(
                    onTap:
                        () => setState(() {
                         loginCubitConroller.isObsecure =
                              !loginCubitConroller.isObsecure;
                        }),
                    child: Icon(
                    loginCubitConroller.isObsecure
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: AppColors.lightGrey,
                    ),
                  ),
            ),
            controller:loginCubitConroller.passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return AppStrings.pleaseEnterValidPassword;
              } else {
                return null;
              }
            },
          ),
          verticalSpace(24),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasNumber: hasNumber,
            hasSpecialCharacters: hasSpecialCharacters,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }
}
