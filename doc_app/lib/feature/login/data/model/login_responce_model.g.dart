// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponceModel _$LoginResponceModelFromJson(Map<String, dynamic> json) =>
    LoginResponceModel(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : LoginDataModel.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LoginResponceModelToJson(LoginResponceModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'status': instance.status,
      'code': instance.code,
    };
