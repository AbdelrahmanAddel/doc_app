import 'package:doc_app/core/constant/assets_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingBackGroundImage extends StatelessWidget {
  const OnboardingBackGroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: SvgPicture.asset(Assets.svgOnboardingdocLogo));
  }
}
