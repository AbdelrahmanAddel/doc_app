import 'package:doc_app/core/theme/app_colors.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.isObsecure,
    this.backGroundColor,
    this.filledBackGroungColor,
    required this.controller,
    required this.validator,
  });
  final String hintText;
  final Widget? suffixIcon;
  final bool? isObsecure;
  final Color? backGroundColor;
  final bool? filledBackGroungColor;
  final TextEditingController controller;
  final Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        return validator(value);
      },

      obscureText: isObsecure ?? false,

      style: AppTextStyle.interMeduinSize14DarkBlue,
      decoration: InputDecoration(
        //* Error Border
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),

          borderSide: BorderSide(color: Colors.red, width: 1.3.w),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),

          borderSide: BorderSide(color: Colors.red, width: 1.3.w),
        ),
        suffixIcon: suffixIcon,

        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
        hintText: hintText,
        hintStyle: AppTextStyle.interMeduinSize14LightGrey,
        //* Enable Border
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),

          borderSide: BorderSide(color: AppColors.lighterGrey),
        ),
        //* Focus Border
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),

          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
        filled: filledBackGroungColor ?? true,
        fillColor: backGroundColor ?? AppColors.offWhite,
      ),
    );
  }
}
