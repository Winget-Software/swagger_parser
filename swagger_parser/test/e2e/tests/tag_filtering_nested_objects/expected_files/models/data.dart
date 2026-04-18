// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status.dart';
import 'metadata.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@Freezed(fromJson: false, toJson: false)
class Data with _$Data {
  const Data._();

  const factory Data({
    @JsonKey(includeIfNull: false) String? name,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool namePresent,
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool idPresent,
    @JsonKey(includeIfNull: false) Status? status,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool statusPresent,
    @JsonKey(includeIfNull: false) Metadata? metadata,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool metadataPresent,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) {
    final data = _DataJson.fromJson(json);
    return Data(
      name: data.name,
      namePresent: json.containsKey('name'),
      id: data.id,
      idPresent: json.containsKey('id'),
      status: data.status,
      statusPresent: json.containsKey('status'),
      metadata: data.metadata,
      metadataPresent: json.containsKey('metadata'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _DataJson(
      name: name,
      id: id,
      status: status,
      metadata: metadata,
    ).toJson();
    if (name == null) {
      if (namePresent) {
        json['name'] = null;
      } else {
        json.remove('name');
      }
    }
    if (id == null) {
      if (idPresent) {
        json['id'] = null;
      } else {
        json.remove('id');
      }
    }
    if (status == null) {
      if (statusPresent) {
        json['status'] = null;
      } else {
        json.remove('status');
      }
    }
    if (metadata == null) {
      if (metadataPresent) {
        json['metadata'] = null;
      } else {
        json.remove('metadata');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _DataJson {
  const _DataJson({
    this.name,
    this.id,
    this.status,
    this.metadata,
  });

  factory _DataJson.fromJson(Map<String, Object?> json) =>
      _$DataJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final String? name;
  @JsonKey(includeIfNull: false)
  final int? id;
  @JsonKey(includeIfNull: false)
  final Status? status;
  @JsonKey(includeIfNull: false)
  final Metadata? metadata;

  Map<String, Object?> toJson() => _$DataJsonToJson(this);
}
