import 'package:doc_app/feature/login/data/model/sub_model/login_data_sub_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_responce_model.g.dart';

@JsonSerializable()
class LoginResponceModel {
  String? message;
  LoginDataModel? data;
  bool? status;
  int? code;
  LoginResponceModel({this.message, this.data, this.status, this.code});
  factory LoginResponceModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponceModelFromJson(json);
}
