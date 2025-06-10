import 'package:doc_app/core/constant/assets_strings.dart';
import 'package:doc_app/features/home/ui/widgets/doctor_container_background_and_text.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorBlueContainer extends StatelessWidget {
  const DoctorBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 197.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          DoctorContainerBackgoundAndText(),
          Positioned(
            right: 10.r,

            child: Image.asset(
              Assets.svgGirlImage,
              width: 136.w,
              height: 197.h,
            ),
          ),
        ],
      ),
    );
  }
}
