import 'package:doc_app/features/onboarding/widget/doc_logo_and_name.dart';
import 'package:doc_app/features/onboarding/widget/doctor_image_and_text.dart';
import 'package:doc_app/features/onboarding/widget/icon_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 22.h, bottom: 32.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                DocLogoAndName(),
                SizedBox(height: 40.h),
                DoctorImageAndText(),
                IconAndText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
