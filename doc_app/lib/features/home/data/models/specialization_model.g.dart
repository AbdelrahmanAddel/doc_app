// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecializationModel _$SpecializationModelFromJson(Map<String, dynamic> json) =>
    SpecializationModel(
      message: json['message'] as String?,
      specializationDoctors: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              SpecializationDoctorsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecializationModelToJson(
        SpecializationModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.specializationDoctors,
    };
