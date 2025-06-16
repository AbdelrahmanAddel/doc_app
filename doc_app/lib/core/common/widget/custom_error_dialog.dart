import 'package:doc_app/core/helper/extensions.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void customErrorDialog(BuildContext context, String errorMessage) {
  showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          icon: Icon(Icons.error, color: Colors.red, size: 32),
          content: Text(
            errorMessage,
            style: AppTextStyle.interMeduinSize14DarkBlue,
          ),
          actions: [
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text(
                'got it',
                style: AppTextStyle.interSemiBoldSize11PrimColor.copyWith(
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        ),
  );
}
