import 'package:doc_app/features/home/ui/widgets/doctor_blue_container.dart';
import 'package:doc_app/features/home/ui/widgets/home_view_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [HomeViewTopBar(), DoctorBlueContainer()],
          ),
        ),
      ),
    );
  }
}
