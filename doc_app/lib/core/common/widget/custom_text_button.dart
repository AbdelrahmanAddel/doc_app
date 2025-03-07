import 'package:doc_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.onPressed,
    required this.child,
    required this.width,
    required this.height,
  });
  final Function()? onPressed;
  final Widget child;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(Size(width.w, height.h)),
        backgroundColor: WidgetStateProperty.all(AppColors.primaryColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0.r)),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
