import 'package:doc_app/core/networking/api_error_handler.dart';
import 'package:doc_app/features/home/data/models/sub_models/specialization_doctor_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.doctorSpecializationLoading() = DoctorSpecializationLoading;
  const factory HomeState.doctorSpecializationLoaded(List<SpecializationDoctorsModel> ?doctors) = DoctorSpecializationLoaded;
  const factory HomeState.doctorSpecializationError(ErrorHandler ? message) = DoctorSpecializationError;
}