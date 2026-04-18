// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'debug_schema.freezed.dart';
part 'debug_schema.g.dart';

@Freezed(fromJson: false, toJson: false)
class DebugSchema with _$DebugSchema {
  const DebugSchema._();

  const factory DebugSchema({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool idPresent,
    @JsonKey(includeIfNull: false) String? message,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool messagePresent,
    @JsonKey(includeIfNull: false) Data? data,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool dataPresent,
  }) = _DebugSchema;

  factory DebugSchema.fromJson(Map<String, Object?> json) {
    final data = _DebugSchemaJson.fromJson(json);
    return DebugSchema(
      id: data.id,
      idPresent: json.containsKey('id'),
      message: data.message,
      messagePresent: json.containsKey('message'),
      data: data.data,
      dataPresent: json.containsKey('data'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _DebugSchemaJson(
      id: id,
      message: message,
      data: data,
    ).toJson();
    if (id == null) {
      if (idPresent) {
        json['id'] = null;
      } else {
        json.remove('id');
      }
    }
    if (message == null) {
      if (messagePresent) {
        json['message'] = null;
      } else {
        json.remove('message');
      }
    }
    if (data == null) {
      if (dataPresent) {
        json['data'] = null;
      } else {
        json.remove('data');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _DebugSchemaJson {
  const _DebugSchemaJson({
    this.id,
    this.message,
    this.data,
  });

  factory _DebugSchemaJson.fromJson(Map<String, Object?> json) =>
      _$DebugSchemaJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final int? id;
  @JsonKey(includeIfNull: false)
  final String? message;
  @JsonKey(includeIfNull: false)
  final Data? data;

  Map<String, Object?> toJson() => _$DebugSchemaJsonToJson(this);
}
