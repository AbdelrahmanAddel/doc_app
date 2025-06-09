import 'package:doc_app/features/splash/functions/delay_navigation_function.dart';
import 'package:doc_app/features/splash/view/widget/onboarding_background_image.dart';
import 'package:doc_app/features/splash/view/widget/onboarding_logo_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      delayNavigation(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [OnboardingBackGroundImage(), OnBoardingLogoAndText()],
      ),
    );
  }
}
