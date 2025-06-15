import 'package:doc_app/features/home/data/models/sub_models/specialization_doctor_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'specialization_model.g.dart';

@JsonSerializable()
class SpecializationModel {
  String? message;
  @JsonKey(name: 'data')
  List<SpecializationDoctorsModel>? specializationDoctors;
  SpecializationModel({this.message, this.specializationDoctors});
  factory SpecializationModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationModelFromJson(json);
  Map<String, dynamic> toJson() => _$SpecializationModelToJson(this);
}
