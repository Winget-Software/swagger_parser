// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'data_class1.dart';

part 'data_class2.freezed.dart';
part 'data_class2.g.dart';

@Freezed(fromJson: false, toJson: false)
class DataClass2 with _$DataClass2 {
  const DataClass2._();

  const factory DataClass2({
    required List<Map<String, List<List<Map<String, DataClass1>>>>> errors,
    @JsonKey(includeIfNull: false) String? title,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool titlePresent,
  }) = _DataClass2;

  factory DataClass2.fromJson(Map<String, Object?> json) {
    final data = _DataClass2Json.fromJson(json);
    return DataClass2(
      errors: data.errors,
      title: data.title,
      titlePresent: json.containsKey('title'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _DataClass2Json(
      errors: errors,
      title: title,
    ).toJson();
    if (title == null) {
      if (titlePresent) {
        json['title'] = null;
      } else {
        json.remove('title');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _DataClass2Json {
  const _DataClass2Json({
    required this.errors,
    this.title,
  });

  factory _DataClass2Json.fromJson(Map<String, Object?> json) =>
      _$DataClass2JsonFromJson(json);

  final List<Map<String, List<List<Map<String, DataClass1>>>>> errors;
  @JsonKey(includeIfNull: false)
  final String? title;

  Map<String, Object?> toJson() => _$DataClass2JsonToJson(this);
}
