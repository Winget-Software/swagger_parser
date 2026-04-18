// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'p1_class_dto.freezed.dart';
part 'p1_class_dto.g.dart';

@Freezed(fromJson: false, toJson: false)
class P1ClassDto with _$P1ClassDto {
  const P1ClassDto._();

  const factory P1ClassDto({
    @JsonKey(includeIfNull: false) DateTime? test,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool testPresent,
  }) = _P1ClassDto;

  factory P1ClassDto.fromJson(Map<String, Object?> json) {
    final data = _P1ClassDtoJson.fromJson(json);
    return P1ClassDto(
      test: data.test,
      testPresent: json.containsKey('test'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _P1ClassDtoJson(
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
class _P1ClassDtoJson {
  const _P1ClassDtoJson({
    this.test,
  });

  factory _P1ClassDtoJson.fromJson(Map<String, Object?> json) =>
      _$P1ClassDtoJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final DateTime? test;

  Map<String, Object?> toJson() => _$P1ClassDtoJsonToJson(this);
}
