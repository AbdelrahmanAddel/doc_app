import 'package:doc_app/core/theme/app_text_style.dart';
import 'package:doc_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_app/features/home/logic/cubit/home_state.dart';
import 'package:doc_app/features/home/ui/widgets/recommendation_doctor_speciality/recommendation_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecommendationDoctorBloc extends StatelessWidget {
  const RecommendationDoctorBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) {
        return current is FilterDoctorsLoaded ||
            current is FilterDoctorsError ||
            current is FilterDoctorLoading;
      },
      builder: (context, state) {
        return state.maybeWhen(
          filterDoctorsLoaded: (doctors) {
            return RecommendationDoctorListView(doctors: doctors ?? []);
          },
          filterDoctorsError: (message) {
            return recommendationDoctorFailure();
          },
          filterDoctorsLoading: () {
            return const Center(child: CircularProgressIndicator());
          },

          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }

  Widget recommendationDoctorFailure() {
    return Center(
      child: Text(
        'Failed to load recommended doctors',
        style: AppTextStyle.interBoldSize18BDarkBlueColor,
      ),
    );
  }
}
