import 'package:doc_app/features/home/data/models/sub_models/governrate_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'city_model.g.dart';

@JsonSerializable()
class City {
  int? id;
  String? name;
  GovernrateModel? governrate;
  City({required this.id, required this.name, this.governrate});
  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
  Map<String, dynamic> toJson() => _$CityToJson(this);
}
