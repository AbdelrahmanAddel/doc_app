import 'package:cached_network_image/cached_network_image.dart';
import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/core/theme/app_colors.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:doc_app/features/home/data/models/sub_models/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationDoctorListViewItem extends StatelessWidget {
   RecommendationDoctorListViewItem({super.key, this.doctors ,required this.currentIndex});
  final List<DoctorsModel> ?doctors;
 final  int currentIndex;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CachedNetworkImage(
          imageUrl: "https://upload.wikimedia.org/wikipedia/commons/e/e2/Sadio_Man%C3%A9_-_Persepolis_F.C._v_Al_Nassr_FC%2C_19_September_2023.jpg",
          progressIndicatorBuilder:
              (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
        horizontalSpace(12),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              doctors?[currentIndex].name ?? "No Name",
              style: AppTextStyle.interBoldSize18BDarkBlueColor.copyWith(
                fontSize: 16.sp,
              ),
            ),
            verticalSpace(4),
            Text(
             doctors?[currentIndex].email ?? "No Email",
              style: AppTextStyle.interRegualarSize12PrimColor.copyWith(
                color: AppColors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
