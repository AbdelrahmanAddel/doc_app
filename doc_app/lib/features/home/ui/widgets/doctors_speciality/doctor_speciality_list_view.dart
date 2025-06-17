import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/core/theme/app_colors.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:doc_app/features/home/data/models/sub_models/specialization_doctor_model.dart';
import 'package:doc_app/features/home/logic/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatefulWidget {
  DoctorSpecialityListView({
    super.key,

    required this.specializationDoctorsList,
  });

  final List<SpecializationDoctorsModel> specializationDoctorsList;

  @override
  State<DoctorSpecialityListView> createState() =>
      _DoctorSpecialityListViewState();
}

class _DoctorSpecialityListViewState extends State<DoctorSpecialityListView> {
  int currentIndeax = 0;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return SizedBox(
      width: double.infinity,
      height: 100.h,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  currentIndeax = index;
                  cubit.getDoctorsBySpecialization(
                    widget.specializationDoctorsList[index].id ?? 0,
                  );
                  setState(() {});
                },
                child: CircleAvatar(
                  radius: 28.r,

                  backgroundColor:
                      currentIndeax == index
                          ? AppColors.darkBlue
                          : AppColors.veryLightBlue,
                  child: Icon(
                    color:
                        currentIndeax == index
                            ? Colors.white
                            : Colors.blueAccent,
                    Icons.person,
                    size: 40,
                  ),
                ),
              ),
              verticalSpace(12),
              Text(
                widget.specializationDoctorsList[index].name ??
                    'Specialization ',
                style: AppTextStyle.interRegualarSize12PrimColor.copyWith(
                  
                            
                  color:currentIndeax == index ? AppColors.darkBlue :AppColors.primaryColor
                ),
              ),
            ],
          );
        },
        separatorBuilder:
            (BuildContext context, int index) => horizontalSpace(16),
        itemCount: widget.specializationDoctorsList.length,
      ),
    );
  }
}
