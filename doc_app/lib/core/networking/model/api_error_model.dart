// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  String? message;
  List? data;
  bool? status;
  int? code;
  ApiErrorModel({this.message, this.data, this.status, this.code});
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
