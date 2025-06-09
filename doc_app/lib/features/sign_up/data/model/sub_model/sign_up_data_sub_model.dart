import 'package:json_annotation/json_annotation.dart';

part 'sign_up_data_sub_model.g.dart';

@JsonSerializable()
class SignUpDataSubModel {
  String? token;
  @JsonKey(name: 'username')
  String? userName;
  SignUpDataSubModel({this.token, this.userName});
  factory SignUpDataSubModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpDataSubModelFromJson(json);
}
