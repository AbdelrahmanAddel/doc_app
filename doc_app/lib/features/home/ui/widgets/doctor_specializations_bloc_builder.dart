import 'package:doc_app/core/constant/app_strings.dart';
import 'package:doc_app/core/helper/spaceing.dart';
import 'package:doc_app/core/networking/api_error_handler.dart';
import 'package:doc_app/core/theme/app_colors.dart';
import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:doc_app/features/home/data/models/sub_models/specialization_doctor_model.dart';
import 'package:doc_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_app/features/home/logic/cubit/home_state.dart';
import 'package:doc_app/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:doc_app/features/home/ui/widgets/recommendation_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) {
        return current is DoctorSpecializationLoading ||
            current is DoctorSpecializationLoaded ||
            current is DoctorSpecializationError;
      },
      builder: (context, state) {
        return state.maybeWhen(
          doctorSpecializationLoaded: (doctors) {
            return doctorSpecialistLoaded(doctors: doctors);
          },

          doctorSpecializationLoading: () => doctorSpecialistLoading(),
          doctorSpecializationError: (message) => doctorSpecialistFailure(message: message),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget doctorSpecialistLoaded({
    required List<SpecializationDoctorsModel>? doctors,
  }) {
    return Expanded(
      child: Column(
        children: [
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
          RecommendationDoctorListView(doctors: doctors?[0].doctors ?? []),
        ],
      ),
    );
  }

  Widget doctorSpecialistLoading() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget doctorSpecialistFailure({ErrorHandler? message}) {
    return Center(
      child: Text(
        message?.apiErrorModel.message ?? 'Error occurred',
        style: AppTextStyle.interBoldSize18BDarkBlueColor,
      ),
    );
  }
}
