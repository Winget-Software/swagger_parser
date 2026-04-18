// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'audit_data.freezed.dart';
part 'audit_data.g.dart';

@Freezed(fromJson: false, toJson: false)
class AuditData with _$AuditData {
  const AuditData._();

  const factory AuditData({
    /// Last modified timestamp from anchor
    required DateTime lastModified,

    /// User who modified from anchor
    @JsonKey(includeIfNull: false) String? modifiedBy,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool modifiedByPresent,
  }) = _AuditData;

  factory AuditData.fromJson(Map<String, Object?> json) {
    final data = _AuditDataJson.fromJson(json);
    return AuditData(
      lastModified: data.lastModified,
      modifiedBy: data.modifiedBy,
      modifiedByPresent: json.containsKey('modifiedBy'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _AuditDataJson(
      lastModified: lastModified,
      modifiedBy: modifiedBy,
    ).toJson();
    if (modifiedBy == null) {
      if (modifiedByPresent) {
        json['modifiedBy'] = null;
      } else {
        json.remove('modifiedBy');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _AuditDataJson {
  const _AuditDataJson({
    required this.lastModified,
    this.modifiedBy,
  });

  factory _AuditDataJson.fromJson(Map<String, Object?> json) =>
      _$AuditDataJsonFromJson(json);

  /// Last modified timestamp from anchor
  final DateTime lastModified;

  /// User who modified from anchor
  @JsonKey(includeIfNull: false)
  final String? modifiedBy;

  Map<String, Object?> toJson() => _$AuditDataJsonToJson(this);
}
