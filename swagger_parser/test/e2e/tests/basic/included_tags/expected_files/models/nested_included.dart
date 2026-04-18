// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'nested_included.freezed.dart';
part 'nested_included.g.dart';

@Freezed(fromJson: false, toJson: false)
class NestedIncluded with _$NestedIncluded {
  const NestedIncluded._();

  const factory NestedIncluded({
    @JsonKey(includeIfNull: false) String? innerField,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool innerFieldPresent,
  }) = _NestedIncluded;

  factory NestedIncluded.fromJson(Map<String, Object?> json) {
    final data = _NestedIncludedJson.fromJson(json);
    return NestedIncluded(
      innerField: data.innerField,
      innerFieldPresent: json.containsKey('innerField'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _NestedIncludedJson(
      innerField: innerField,
    ).toJson();
    if (innerField == null) {
      if (innerFieldPresent) {
        json['innerField'] = null;
      } else {
        json.remove('innerField');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _NestedIncludedJson {
  const _NestedIncludedJson({
    this.innerField,
  });

  factory _NestedIncludedJson.fromJson(Map<String, Object?> json) =>
      _$NestedIncludedJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final String? innerField;

  Map<String, Object?> toJson() => _$NestedIncludedJsonToJson(this);
}
