import 'package:bloc/bloc.dart';
import 'package:doc_app/features/home/logic/cubit/home_state.dart';
import 'package:doc_app/features/home/logic/repository/home_repository.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepository) : super(HomeState.initial());
  final HomeRepository homeRepository;

  getDoctorsBySpecialization() async {
    emit(HomeState.doctorSpecializationLoading());

    final responce = await homeRepository.getAllSpecialization();
    responce.when(
      success: (success) {
        emit(
          HomeState.doctorSpecializationLoaded(success.specializationDoctors),
        );
      },
      failure: (failure) {
        emit(HomeState.doctorSpecializationError(failure));
      },
    );
  }
}
