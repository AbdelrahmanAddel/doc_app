import 'package:json_annotation/json_annotation.dart';

part 'specialization_model.g.dart';
@JsonSerializable()
class Specialization {
  int? id;
  String? name;

  Specialization({required this.id, required this.name});
  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
  Map<String, dynamic> toJson() => _$SpecializationToJson(this);
}
