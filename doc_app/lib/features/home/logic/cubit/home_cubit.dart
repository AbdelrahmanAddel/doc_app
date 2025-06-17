import 'package:bloc/bloc.dart';
import 'package:doc_app/core/helper/extensions.dart';
import 'package:doc_app/core/networking/api_error_handler.dart';
import 'package:doc_app/features/home/data/models/sub_models/doctor_model.dart';
import 'package:doc_app/features/home/data/models/sub_models/specialization_doctor_model.dart';
import 'package:doc_app/features/home/logic/cubit/home_state.dart';
import 'package:doc_app/features/home/logic/repository/home_repository.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepository) : super(HomeState.initial());
  final HomeRepository homeRepository;
  List<SpecializationDoctorsModel>? doctors = [];

  getAllSpecializationsDoctors() async {
    emit(HomeState.doctorSpecializationLoading());

    final responce = await homeRepository.getAllSpecialization();
    responce.when(
      success: (specializationModelResponseModel) {
        doctors = specializationModelResponseModel.specializationDoctors;
        getDoctorsBySpecialization(doctors?.first.id ?? 0);

        emit(
          HomeState.doctorSpecializationLoaded(
            specializationModelResponseModel.specializationDoctors,
          ),
        );
      },
      failure: (errorMessage) {
        emit(HomeState.doctorSpecializationError(errorMessage));
      },
    );
  }

  getDoctorsBySpecialization(int currentSpecializationId) {
    emit(HomeState.filterDoctorsLoading());
    List<DoctorsModel>? doctorsModel = filterDoctorsById(
      currentSpecializationId,
    );

    if (!doctorsModel.isNullOrEmpty()) {
      emit(HomeState.filterDoctorsLoaded(doctorsModel));
    } else {
      emit(
        HomeState.doctorSpecializationError(
          ErrorHandler.handle('No doctors found'),
        ),
      );
    }
  }

  filterDoctorsById(int id) {
    return doctors
        ?.firstWhere((doctor) => doctor.id != null && doctor.id == id)
        .doctors;
  }
}
