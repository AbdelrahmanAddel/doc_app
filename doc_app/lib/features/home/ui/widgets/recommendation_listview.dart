import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/features/home/ui/widgets/recommendation_listview_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationDoctorListView extends StatelessWidget {
  const RecommendationDoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (index, context) {
          return Container(
            width: double.infinity,
            height: 126.h,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
            child: RecommendationDoctorListViewContent(),
          );
        },
        separatorBuilder: (index, context) => verticalSpace(16),
        itemCount: 8,
      ),
    );
  }
}
