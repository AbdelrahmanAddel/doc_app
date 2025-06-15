import 'package:doc_app/features/home/data/models/sub_models/doctor_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'specialization_doctor_model.g.dart';
@JsonSerializable()
class SpecializationDoctorsModel {
  int? id;
  String? name;
  List<DoctorsModel>? doctors;
  SpecializationDoctorsModel({this.id, this.name, this.doctors});
  factory SpecializationDoctorsModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationDoctorsModelFromJson(json);
  Map<String, dynamic> toJson() => _$SpecializationDoctorsModelToJson(this);
}
