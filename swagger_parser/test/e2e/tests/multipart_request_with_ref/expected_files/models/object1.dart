// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'object1.freezed.dart';
part 'object1.g.dart';

@Freezed(fromJson: false, toJson: false)
class Object1 with _$Object1 {
  const Object1._();

  const factory Object1({
    @JsonKey(includeIfNull: false) String? street,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool streetPresent,
  }) = _Object1;

  factory Object1.fromJson(Map<String, Object?> json) {
    final data = _Object1Json.fromJson(json);
    return Object1(
      street: data.street,
      streetPresent: json.containsKey('street'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _Object1Json(
      street: street,
    ).toJson();
    if (street == null) {
      if (streetPresent) {
        json['street'] = null;
      } else {
        json.remove('street');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _Object1Json {
  const _Object1Json({
    this.street,
  });

  factory _Object1Json.fromJson(Map<String, Object?> json) =>
      _$Object1JsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final String? street;

  Map<String, Object?> toJson() => _$Object1JsonToJson(this);
}
