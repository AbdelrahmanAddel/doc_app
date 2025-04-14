import 'package:json_annotation/json_annotation.dart';

part 'login_data_sub_model.g.dart';

@JsonSerializable()
class LoginDataModel {
  String? token;
  @JsonKey(name: 'username')
  String? userName;
  LoginDataModel({this.token, this.userName});
  factory LoginDataModel.fromJson(Map<String, dynamic> json) =>
      _$LoginDataModelFromJson(json);
}
