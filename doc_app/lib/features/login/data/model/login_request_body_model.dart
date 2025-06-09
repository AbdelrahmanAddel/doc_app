import 'package:json_annotation/json_annotation.dart';

part 'login_request_body_model.g.dart';

@JsonSerializable()
class LoginRequestBodyModel {
  String? email;
  String? password;
  LoginRequestBodyModel({this.email, this.password});

  Map<String, dynamic> toJson() => _$LoginRequestBodyModelToJson(this);
}
