// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_api_v1_empty_tags_endpoint_response.freezed.dart';
part 'get_api_v1_empty_tags_endpoint_response.g.dart';

@Freezed(fromJson: false, toJson: false)
class GetApiV1EmptyTagsEndpointResponse
    with _$GetApiV1EmptyTagsEndpointResponse {
  const GetApiV1EmptyTagsEndpointResponse._();

  const factory GetApiV1EmptyTagsEndpointResponse({
    @JsonKey(includeIfNull: false) String? emptyTagsField,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool emptyTagsFieldPresent,
  }) = _GetApiV1EmptyTagsEndpointResponse;

  factory GetApiV1EmptyTagsEndpointResponse.fromJson(
      Map<String, Object?> json) {
    final data = _GetApiV1EmptyTagsEndpointResponseJson.fromJson(json);
    return GetApiV1EmptyTagsEndpointResponse(
      emptyTagsField: data.emptyTagsField,
      emptyTagsFieldPresent: json.containsKey('emptyTagsField'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _GetApiV1EmptyTagsEndpointResponseJson(
      emptyTagsField: emptyTagsField,
    ).toJson();
    if (emptyTagsField == null) {
      if (emptyTagsFieldPresent) {
        json['emptyTagsField'] = null;
      } else {
        json.remove('emptyTagsField');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _GetApiV1EmptyTagsEndpointResponseJson {
  const _GetApiV1EmptyTagsEndpointResponseJson({
    this.emptyTagsField,
  });

  factory _GetApiV1EmptyTagsEndpointResponseJson.fromJson(
          Map<String, Object?> json) =>
      _$GetApiV1EmptyTagsEndpointResponseJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final String? emptyTagsField;

  Map<String, Object?> toJson() =>
      _$GetApiV1EmptyTagsEndpointResponseJsonToJson(this);
}
