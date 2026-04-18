// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status.dart';

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
    @JsonKey(includeIfNull: false) Status? status,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool statusPresent,
    @JsonKey(includeIfNull: false) int? count,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool countPresent,
  }) = _IncludedData;

  factory IncludedData.fromJson(Map<String, Object?> json) {
    final data = _IncludedDataJson.fromJson(json);
    return IncludedData(
      dataField: data.dataField,
      dataFieldPresent: json.containsKey('dataField'),
      status: data.status,
      statusPresent: json.containsKey('status'),
      count: data.count,
      countPresent: json.containsKey('count'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _IncludedDataJson(
      dataField: dataField,
      status: status,
      count: count,
    ).toJson();
    if (dataField == null) {
      if (dataFieldPresent) {
        json['dataField'] = null;
      } else {
        json.remove('dataField');
      }
    }
    if (status == null) {
      if (statusPresent) {
        json['status'] = null;
      } else {
        json.remove('status');
      }
    }
    if (count == null) {
      if (countPresent) {
        json['count'] = null;
      } else {
        json.remove('count');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _IncludedDataJson {
  const _IncludedDataJson({
    this.dataField,
    this.status,
    this.count,
  });

  factory _IncludedDataJson.fromJson(Map<String, Object?> json) =>
      _$IncludedDataJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final String? dataField;
  @JsonKey(includeIfNull: false)
  final Status? status;
  @JsonKey(includeIfNull: false)
  final int? count;

  Map<String, Object?> toJson() => _$IncludedDataJsonToJson(this);
}
