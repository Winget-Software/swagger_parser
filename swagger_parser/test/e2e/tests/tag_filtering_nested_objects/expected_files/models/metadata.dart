// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'metadata.freezed.dart';
part 'metadata.g.dart';

@Freezed(fromJson: false, toJson: false)
class Metadata with _$Metadata {
  const Metadata._();

  const factory Metadata({
    @JsonKey(includeIfNull: false) DateTime? createdAt,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool createdAtPresent,
    @JsonKey(includeIfNull: false) String? updatedBy,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool updatedByPresent,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, Object?> json) {
    final data = _MetadataJson.fromJson(json);
    return Metadata(
      createdAt: data.createdAt,
      createdAtPresent: json.containsKey('createdAt'),
      updatedBy: data.updatedBy,
      updatedByPresent: json.containsKey('updatedBy'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _MetadataJson(
      createdAt: createdAt,
      updatedBy: updatedBy,
    ).toJson();
    if (createdAt == null) {
      if (createdAtPresent) {
        json['createdAt'] = null;
      } else {
        json.remove('createdAt');
      }
    }
    if (updatedBy == null) {
      if (updatedByPresent) {
        json['updatedBy'] = null;
      } else {
        json.remove('updatedBy');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _MetadataJson {
  const _MetadataJson({
    this.createdAt,
    this.updatedBy,
  });

  factory _MetadataJson.fromJson(Map<String, Object?> json) =>
      _$MetadataJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(includeIfNull: false)
  final String? updatedBy;

  Map<String, Object?> toJson() => _$MetadataJsonToJson(this);
}
