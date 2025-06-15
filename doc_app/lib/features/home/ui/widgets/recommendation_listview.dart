import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/features/home/data/models/sub_models/doctor_model.dart';
import 'package:doc_app/features/home/ui/widgets/recommendation_listview_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationDoctorListView extends StatelessWidget {
  const RecommendationDoctorListView({super.key, required this.doctors});
  final List<DoctorsModel>? doctors;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            height: 126.h,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
            child: RecommendationDoctorListViewItem(
              currentIndex: index,
              doctors: doctors,
            ),
          );
        },
        separatorBuilder: (context, index) => verticalSpace(16),
        itemCount: doctors?.length ?? 0,
      ),
    );
  }
}
