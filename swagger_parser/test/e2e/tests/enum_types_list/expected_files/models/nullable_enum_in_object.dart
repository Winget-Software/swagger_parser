// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'fruits.dart';

part 'nullable_enum_in_object.freezed.dart';
part 'nullable_enum_in_object.g.dart';

@Freezed(fromJson: false, toJson: false)
class NullableEnumInObject with _$NullableEnumInObject {
  const NullableEnumInObject._();

  const factory NullableEnumInObject({
    @JsonKey(includeIfNull: false) Fruits? fruits,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool fruitsPresent,
  }) = _NullableEnumInObject;

  factory NullableEnumInObject.fromJson(Map<String, Object?> json) {
    final data = _NullableEnumInObjectJson.fromJson(json);
    return NullableEnumInObject(
      fruits: data.fruits,
      fruitsPresent: json.containsKey('fruits'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _NullableEnumInObjectJson(
      fruits: fruits,
    ).toJson();
    if (fruits == null) {
      if (fruitsPresent) {
        json['fruits'] = null;
      } else {
        json.remove('fruits');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _NullableEnumInObjectJson {
  const _NullableEnumInObjectJson({
    this.fruits,
  });

  factory _NullableEnumInObjectJson.fromJson(Map<String, Object?> json) =>
      _$NullableEnumInObjectJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final Fruits? fruits;

  Map<String, Object?> toJson() => _$NullableEnumInObjectJsonToJson(this);
}
