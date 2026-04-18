// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'object0.freezed.dart';
part 'object0.g.dart';

@Freezed(fromJson: false, toJson: false)
class Object0 with _$Object0 {
  const Object0._();

  const factory Object0({
    @JsonKey(includeIfNull: false) String? street,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool streetPresent,
    @JsonKey(includeIfNull: false) bool? deleted,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool deletedPresent,
  }) = _Object0;

  factory Object0.fromJson(Map<String, Object?> json) {
    final data = _Object0Json.fromJson(json);
    return Object0(
      street: data.street,
      streetPresent: json.containsKey('street'),
      deleted: data.deleted,
      deletedPresent: json.containsKey('deleted'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _Object0Json(
      street: street,
      deleted: deleted,
    ).toJson();
    if (street == null) {
      if (streetPresent) {
        json['street'] = null;
      } else {
        json.remove('street');
      }
    }
    if (deleted == null) {
      if (deletedPresent) {
        json['deleted'] = null;
      } else {
        json.remove('deleted');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _Object0Json {
  const _Object0Json({
    this.street,
    this.deleted,
  });

  factory _Object0Json.fromJson(Map<String, Object?> json) =>
      _$Object0JsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final String? street;
  @JsonKey(includeIfNull: false)
  final bool? deleted;

  Map<String, Object?> toJson() => _$Object0JsonToJson(this);
}
