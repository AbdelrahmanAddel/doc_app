import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error_handler.g.dart';

@JsonSerializable()
class ApiErrorModel {
  String? message;
  int? code;
  bool? status;
  ApiErrorModel({this.message, this.code, this.status});
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
}
