// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'p1_class_dto.dart';
import 'p2_enum_dto.dart';

part 'api_request_body_dto.freezed.dart';
part 'api_request_body_dto.g.dart';

@Freezed(fromJson: false, toJson: false)
class ApiRequestBodyDto with _$ApiRequestBodyDto {
  const ApiRequestBodyDto._();

  const factory ApiRequestBodyDto({
    @JsonKey(name: 'p1_class') required P1ClassDto p1Class,
    @JsonKey(includeIfNull: false, name: 'p2_enum') P2EnumDto? p2Enum,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool p2EnumPresent,
  }) = _ApiRequestBodyDto;

  factory ApiRequestBodyDto.fromJson(Map<String, Object?> json) {
    final data = _ApiRequestBodyDtoJson.fromJson(json);
    return ApiRequestBodyDto(
      p1Class: data.p1Class,
      p2Enum: data.p2Enum,
      p2EnumPresent: json.containsKey('p2_enum'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _ApiRequestBodyDtoJson(
      p1Class: p1Class,
      p2Enum: p2Enum,
    ).toJson();
    if (p2Enum == null) {
      if (p2EnumPresent) {
        json['p2_enum'] = null;
      } else {
        json.remove('p2_enum');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _ApiRequestBodyDtoJson {
  const _ApiRequestBodyDtoJson({
    required this.p1Class,
    this.p2Enum,
  });

  factory _ApiRequestBodyDtoJson.fromJson(Map<String, Object?> json) =>
      _$ApiRequestBodyDtoJsonFromJson(json);

  @JsonKey(name: 'p1_class')
  final P1ClassDto p1Class;
  @JsonKey(includeIfNull: false, name: 'p2_enum')
  final P2EnumDto? p2Enum;

  Map<String, Object?> toJson() => _$ApiRequestBodyDtoJsonToJson(this);
}
