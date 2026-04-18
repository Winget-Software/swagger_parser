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
    /// Timestamp from anchor
    @JsonKey(includeIfNull: false) DateTime? createdAt,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool createdAtPresent,

    /// Semantic version from anchor
    @JsonKey(includeIfNull: false) String? version,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool versionPresent,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, Object?> json) {
    final data = _MetadataJson.fromJson(json);
    return Metadata(
      createdAt: data.createdAt,
      createdAtPresent: json.containsKey('createdAt'),
      version: data.version,
      versionPresent: json.containsKey('version'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _MetadataJson(
      createdAt: createdAt,
      version: version,
    ).toJson();
    if (createdAt == null) {
      if (createdAtPresent) {
        json['createdAt'] = null;
      } else {
        json.remove('createdAt');
      }
    }
    if (version == null) {
      if (versionPresent) {
        json['version'] = null;
      } else {
        json.remove('version');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _MetadataJson {
  const _MetadataJson({
    this.createdAt,
    this.version,
  });

  factory _MetadataJson.fromJson(Map<String, Object?> json) =>
      _$MetadataJsonFromJson(json);

  /// Timestamp from anchor
  @JsonKey(includeIfNull: false)
  final DateTime? createdAt;

  /// Semantic version from anchor
  @JsonKey(includeIfNull: false)
  final String? version;

  Map<String, Object?> toJson() => _$MetadataJsonToJson(this);
}
