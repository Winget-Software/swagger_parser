// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'option.freezed.dart';
part 'option.g.dart';

@Freezed(fromJson: false, toJson: false)
class Option with _$Option {
  const Option._();

  const factory Option({
    @JsonKey(name: 'required_id') required int requiredId,
    @JsonKey(name: 'required_name') required String requiredName,
    @JsonKey(includeIfNull: true, name: 'required_nullable_id')
    required int? requiredNullableId,
    @JsonKey(includeIfNull: true, name: 'required_nullable_name')
    required String? requiredNullableName,
    @JsonKey(includeIfNull: false, name: 'optional_id') int? optionalId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool optionalIdPresent,
    @JsonKey(includeIfNull: false, name: 'optional_name') String? optionalName,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool optionalNamePresent,
  }) = _Option;

  factory Option.fromJson(Map<String, Object?> json) {
    final data = _OptionJson.fromJson(json);
    return Option(
      requiredId: data.requiredId,
      requiredName: data.requiredName,
      requiredNullableId: data.requiredNullableId,
      requiredNullableName: data.requiredNullableName,
      optionalId: data.optionalId,
      optionalIdPresent: json.containsKey('optional_id'),
      optionalName: data.optionalName,
      optionalNamePresent: json.containsKey('optional_name'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _OptionJson(
      requiredId: requiredId,
      requiredName: requiredName,
      requiredNullableId: requiredNullableId,
      requiredNullableName: requiredNullableName,
      optionalId: optionalId,
      optionalName: optionalName,
    ).toJson();
    if (optionalId == null) {
      if (optionalIdPresent) {
        json['optional_id'] = null;
      } else {
        json.remove('optional_id');
      }
    }
    if (optionalName == null) {
      if (optionalNamePresent) {
        json['optional_name'] = null;
      } else {
        json.remove('optional_name');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _OptionJson {
  const _OptionJson({
    required this.requiredId,
    required this.requiredName,
    required this.requiredNullableId,
    required this.requiredNullableName,
    this.optionalId,
    this.optionalName,
  });

  factory _OptionJson.fromJson(Map<String, Object?> json) =>
      _$OptionJsonFromJson(json);

  @JsonKey(name: 'required_id')
  final int requiredId;
  @JsonKey(name: 'required_name')
  final String requiredName;
  @JsonKey(includeIfNull: true, name: 'required_nullable_id')
  final int? requiredNullableId;
  @JsonKey(includeIfNull: true, name: 'required_nullable_name')
  final String? requiredNullableName;
  @JsonKey(includeIfNull: false, name: 'optional_id')
  final int? optionalId;
  @JsonKey(includeIfNull: false, name: 'optional_name')
  final String? optionalName;

  Map<String, Object?> toJson() => _$OptionJsonToJson(this);
}
