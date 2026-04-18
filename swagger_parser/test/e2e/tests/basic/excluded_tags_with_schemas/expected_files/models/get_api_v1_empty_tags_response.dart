// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_api_v1_empty_tags_response.freezed.dart';
part 'get_api_v1_empty_tags_response.g.dart';

@Freezed(fromJson: false, toJson: false)
class GetApiV1EmptyTagsResponse with _$GetApiV1EmptyTagsResponse {
  const GetApiV1EmptyTagsResponse._();

  const factory GetApiV1EmptyTagsResponse({
    @JsonKey(includeIfNull: false) String? value,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool valuePresent,
  }) = _GetApiV1EmptyTagsResponse;

  factory GetApiV1EmptyTagsResponse.fromJson(Map<String, Object?> json) {
    final data = _GetApiV1EmptyTagsResponseJson.fromJson(json);
    return GetApiV1EmptyTagsResponse(
      value: data.value,
      valuePresent: json.containsKey('value'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _GetApiV1EmptyTagsResponseJson(
      value: value,
    ).toJson();
    if (value == null) {
      if (valuePresent) {
        json['value'] = null;
      } else {
        json.remove('value');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _GetApiV1EmptyTagsResponseJson {
  const _GetApiV1EmptyTagsResponseJson({
    this.value,
  });

  factory _GetApiV1EmptyTagsResponseJson.fromJson(Map<String, Object?> json) =>
      _$GetApiV1EmptyTagsResponseJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final String? value;

  Map<String, Object?> toJson() => _$GetApiV1EmptyTagsResponseJsonToJson(this);
}
