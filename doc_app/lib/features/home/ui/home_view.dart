import 'package:doc_app/core/constant/app_strings.dart';
import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/core/theme/app_colors.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:doc_app/features/home/ui/widgets/doctor_blue_container.dart';
import 'package:doc_app/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:doc_app/features/home/ui/widgets/home_view_top_bar.dart';
import 'package:doc_app/features/home/ui/widgets/recommendation_listview.dart';
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
            children: [
              HomeViewTopBar(),
              DoctorBlueContainer(),
              verticalSpace(24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.doctorSpeciality,
                    style: AppTextStyle.interSemiBoldSize18White.copyWith(
                      color: AppColors.darkBlue,
                    ),
                  ),
                  Text(
                    AppStrings.seeAll,
                    style: AppTextStyle.interRegualarSize12PrimColor,
                  ),
                ],
              ),
              verticalSpace(16),
              DoctorSpecialityListView(),
              verticalSpace(23),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.recommendationDoctor,
                    style: AppTextStyle.interSemiBoldSize18White.copyWith(
                      color: AppColors.darkBlue,
                    ),
                  ),
                  Text(
                    AppStrings.seeAll,
                    style: AppTextStyle.interRegualarSize12PrimColor,
                  ),
                ],
              ),
              verticalSpace(15),

              RecommendationDoctorListView(),
            ],
          ),
        ),
      ),
    );
  }
}
