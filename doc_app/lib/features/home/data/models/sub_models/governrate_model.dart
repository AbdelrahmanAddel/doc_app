

import 'package:freezed_annotation/freezed_annotation.dart';
part 'governrate_model.g.dart';
@JsonSerializable()
class GovernrateModel {
  int ?id;
  String ?name;
  GovernrateModel({this.id, this.name});
  factory GovernrateModel.fromJson(Map<String, dynamic> json) =>
      _$GovernrateModelFromJson(json);
  Map<String, dynamic> toJson() => _$GovernrateModelToJson(this);
}