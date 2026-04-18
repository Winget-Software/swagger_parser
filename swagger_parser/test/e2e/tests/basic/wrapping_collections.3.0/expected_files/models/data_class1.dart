// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_class1.freezed.dart';
part 'data_class1.g.dart';

@Freezed(fromJson: false, toJson: false)
class DataClass1 with _$DataClass1 {
  const DataClass1._();

  const factory DataClass1({
    required Map<String, List<String>> errors,
    @JsonKey(includeIfNull: false) String? type,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool typePresent,
    @JsonKey(includeIfNull: false) String? instance,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool instancePresent,
  }) = _DataClass1;

  factory DataClass1.fromJson(Map<String, Object?> json) {
    final data = _DataClass1Json.fromJson(json);
    return DataClass1(
      errors: data.errors,
      type: data.type,
      typePresent: json.containsKey('type'),
      instance: data.instance,
      instancePresent: json.containsKey('instance'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _DataClass1Json(
      errors: errors,
      type: type,
      instance: instance,
    ).toJson();
    if (type == null) {
      if (typePresent) {
        json['type'] = null;
      } else {
        json.remove('type');
      }
    }
    if (instance == null) {
      if (instancePresent) {
        json['instance'] = null;
      } else {
        json.remove('instance');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _DataClass1Json {
  const _DataClass1Json({
    required this.errors,
    this.type,
    this.instance,
  });

  factory _DataClass1Json.fromJson(Map<String, Object?> json) =>
      _$DataClass1JsonFromJson(json);

  final Map<String, List<String>> errors;
  @JsonKey(includeIfNull: false)
  final String? type;
  @JsonKey(includeIfNull: false)
  final String? instance;

  Map<String, Object?> toJson() => _$DataClass1JsonToJson(this);
}
