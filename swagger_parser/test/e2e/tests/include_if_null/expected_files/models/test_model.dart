// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_model.freezed.dart';
part 'test_model.g.dart';

@Freezed(fromJson: false, toJson: false)
class TestModel with _$TestModel {
  const TestModel._();

  const factory TestModel({
    required int id,
    @JsonKey(includeIfNull: true) required String? requiredNullableField,
    @JsonKey(includeIfNull: false) String? name,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool namePresent,
    @JsonKey(includeIfNull: false) String? optionalNullableField,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool optionalNullableFieldPresent,
  }) = _TestModel;

  factory TestModel.fromJson(Map<String, Object?> json) {
    final data = _TestModelJson.fromJson(json);
    return TestModel(
      id: data.id,
      requiredNullableField: data.requiredNullableField,
      name: data.name,
      namePresent: json.containsKey('name'),
      optionalNullableField: data.optionalNullableField,
      optionalNullableFieldPresent: json.containsKey('optionalNullableField'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _TestModelJson(
      id: id,
      requiredNullableField: requiredNullableField,
      name: name,
      optionalNullableField: optionalNullableField,
    ).toJson();
    if (name == null) {
      if (namePresent) {
        json['name'] = null;
      } else {
        json.remove('name');
      }
    }
    if (optionalNullableField == null) {
      if (optionalNullableFieldPresent) {
        json['optionalNullableField'] = null;
      } else {
        json.remove('optionalNullableField');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _TestModelJson {
  const _TestModelJson({
    required this.id,
    required this.requiredNullableField,
    this.name,
    this.optionalNullableField,
  });

  factory _TestModelJson.fromJson(Map<String, Object?> json) =>
      _$TestModelJsonFromJson(json);

  final int id;
  @JsonKey(includeIfNull: true)
  final String? requiredNullableField;
  @JsonKey(includeIfNull: false)
  final String? name;
  @JsonKey(includeIfNull: false)
  final String? optionalNullableField;

  Map<String, Object?> toJson() => _$TestModelJsonToJson(this);
}
