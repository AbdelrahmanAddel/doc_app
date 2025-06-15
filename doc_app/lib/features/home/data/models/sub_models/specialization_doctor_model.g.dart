// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization_doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecializationDoctorsModel _$SpecializationDoctorsModelFromJson(
        Map<String, dynamic> json) =>
    SpecializationDoctorsModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      doctors: (json['doctors'] as List<dynamic>?)
          ?.map((e) => DoctorsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecializationDoctorsModelToJson(
        SpecializationDoctorsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'doctors': instance.doctors,
    };
