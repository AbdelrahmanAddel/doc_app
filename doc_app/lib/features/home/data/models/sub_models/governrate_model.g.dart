// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'governrate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GovernrateModel _$GovernrateModelFromJson(Map<String, dynamic> json) =>
    GovernrateModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$GovernrateModelToJson(GovernrateModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
