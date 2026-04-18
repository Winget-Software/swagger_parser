// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';

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
    @JsonKey(includeIfNull: false) Category? category,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool categoryPresent,
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
      category: data.category,
      categoryPresent: json.containsKey('category'),
      count: data.count,
      countPresent: json.containsKey('count'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _IncludedDataJson(
      dataField: dataField,
      category: category,
      count: count,
    ).toJson();
    if (dataField == null) {
      if (dataFieldPresent) {
        json['dataField'] = null;
      } else {
        json.remove('dataField');
      }
    }
    if (category == null) {
      if (categoryPresent) {
        json['category'] = null;
      } else {
        json.remove('category');
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
    this.category,
    this.count,
  });

  factory _IncludedDataJson.fromJson(Map<String, Object?> json) =>
      _$IncludedDataJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final String? dataField;
  @JsonKey(includeIfNull: false)
  final Category? category;
  @JsonKey(includeIfNull: false)
  final int? count;

  Map<String, Object?> toJson() => _$IncludedDataJsonToJson(this);
}
