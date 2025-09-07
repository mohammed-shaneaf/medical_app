import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';
@JsonSerializable()
class ApiErrorModel {
  final String? message;
  //  @JsonKey(name: 'error_code') this when the key name is different and backend returns unvalid name
  final int? code;

  ApiErrorModel({this.message, this.code});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
