// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'object0_dto.freezed.dart';
part 'object0_dto.g.dart';

@Freezed(fromJson: false, toJson: false)
class Object0Dto with _$Object0Dto {
  const Object0Dto._();

  const factory Object0Dto({
    @JsonKey(includeIfNull: false) DateTime? test,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool testPresent,
  }) = _Object0Dto;

  factory Object0Dto.fromJson(Map<String, Object?> json) {
    final data = _Object0DtoJson.fromJson(json);
    return Object0Dto(
      test: data.test,
      testPresent: json.containsKey('test'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _Object0DtoJson(
      test: test,
    ).toJson();
    if (test == null) {
      if (testPresent) {
        json['test'] = null;
      } else {
        json.remove('test');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _Object0DtoJson {
  const _Object0DtoJson({
    this.test,
  });

  factory _Object0DtoJson.fromJson(Map<String, Object?> json) =>
      _$Object0DtoJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final DateTime? test;

  Map<String, Object?> toJson() => _$Object0DtoJsonToJson(this);
}
