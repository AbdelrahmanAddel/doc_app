// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResponceModel _$SignUpResponceModelFromJson(Map<String, dynamic> json) =>
    SignUpResponceModel(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SignUpDataSubModel.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SignUpResponceModelToJson(
        SignUpResponceModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'status': instance.status,
      'code': instance.code,
    };
