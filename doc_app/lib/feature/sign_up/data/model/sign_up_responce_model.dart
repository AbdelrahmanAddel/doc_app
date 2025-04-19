import 'package:doc_app/feature/sign_up/data/model/sub_model/sign_up_data_sub_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sign_up_responce_model.g.dart';

@JsonSerializable()
class SignUpResponceModel {
  String? message;
  SignUpDataSubModel? data;
  bool? status;
  int? code;
  SignUpResponceModel({this.message, this.data, this.status, this.code});
  factory SignUpResponceModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponceModelFromJson(json);
}
