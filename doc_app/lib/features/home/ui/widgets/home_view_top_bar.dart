import 'package:doc_app/core/constant/assets_strings.dart';
import 'package:doc_app/core/theme/app_colors.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeViewTopBar extends StatelessWidget {
  const HomeViewTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hellow ,Sadio",
              style: AppTextStyle.interBoldSize18BDarkBlueColor,
            ),
            Text(
              "How Are You Today ?",
              style: AppTextStyle.interRegualarSize11MeduimGrey.copyWith(
                color: AppColors.darkGrey,
              ),
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 20,
          backgroundColor: AppColors.lightestGrey,
          child: SvgPicture.asset(Assets.svgNotificationIcon),
        ),
      ],
    );
  }
}
