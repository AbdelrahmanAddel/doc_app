import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/core/theme/app_colors.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildValidationRow({required String text, required bool hasValid}) {
  return Row(
    children: [
      horizontalSpace(9),

      CircleAvatar(backgroundColor: AppColors.lightGrey, radius: 4.2.r),
      horizontalSpace(8),
      Text(
        text,
        style: AppTextStyle.interRegualarSize13Black.copyWith(
          decoration:
              hasValid ? TextDecoration.lineThrough : TextDecoration.none,
          decorationColor: Colors.black,
          decorationThickness: 2,
        ),
      ),
    ],
  );
}
