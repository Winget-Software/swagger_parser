// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'level.dart';

part 'included_data.freezed.dart';
part 'included_data.g.dart';

@Freezed(fromJson: false, toJson: false)
class IncludedData with _$IncludedData {
  const IncludedData._();

  const factory IncludedData({
    @JsonKey(includeIfNull: false) String? dataField,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool dataFieldPresent,
    @JsonKey(includeIfNull: false) Level? level,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool levelPresent,
    @JsonKey(includeIfNull: false) int? priority,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool priorityPresent,
  }) = _IncludedData;

  factory IncludedData.fromJson(Map<String, Object?> json) {
    final data = _IncludedDataJson.fromJson(json);
    return IncludedData(
      dataField: data.dataField,
      dataFieldPresent: json.containsKey('dataField'),
      level: data.level,
      levelPresent: json.containsKey('level'),
      priority: data.priority,
      priorityPresent: json.containsKey('priority'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _IncludedDataJson(
      dataField: dataField,
      level: level,
      priority: priority,
    ).toJson();
    if (dataField == null) {
      if (dataFieldPresent) {
        json['dataField'] = null;
      } else {
        json.remove('dataField');
      }
    }
    if (level == null) {
      if (levelPresent) {
        json['level'] = null;
      } else {
        json.remove('level');
      }
    }
    if (priority == null) {
      if (priorityPresent) {
        json['priority'] = null;
      } else {
        json.remove('priority');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _IncludedDataJson {
  const _IncludedDataJson({
    this.dataField,
    this.level,
    this.priority,
  });

  factory _IncludedDataJson.fromJson(Map<String, Object?> json) =>
      _$IncludedDataJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final String? dataField;
  @JsonKey(includeIfNull: false)
  final Level? level;
  @JsonKey(includeIfNull: false)
  final int? priority;

  Map<String, Object?> toJson() => _$IncludedDataJsonToJson(this);
}
