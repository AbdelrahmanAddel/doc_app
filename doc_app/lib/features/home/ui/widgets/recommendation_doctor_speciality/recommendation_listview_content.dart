import 'package:cached_network_image/cached_network_image.dart';
import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/core/theme/app_colors.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:doc_app/features/home/data/models/sub_models/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
class RecommendationDoctorListViewItem extends StatelessWidget {
   const RecommendationDoctorListViewItem({super.key, this.doctors ,required this.currentIndex});
  final List<DoctorsModel> ?doctors;
 final  int currentIndex;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          CachedNetworkImage(
            imageUrl:
                "https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050",
            progressIndicatorBuilder: (context, url, downloadProgress) {
              return Shimmer.fromColors(
                baseColor: AppColors.lightGrey,
                highlightColor: Colors.white,
                child: Container(
                  width: 110.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                ),
              );
            },
            imageBuilder: (context, imageProvider) => Container(
              width: 110.w,
              height: 120.h,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
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


