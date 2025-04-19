// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data_sub_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginDataModel _$LoginDataModelFromJson(Map<String, dynamic> json) =>
    LoginDataModel(
      token: json['token'] as String?,
      userName: json['username'] as String?,
    );

Map<String, dynamic> _$LoginDataModelToJson(LoginDataModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'username': instance.userName,
    };
