// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_api_v1_no_tags_endpoint_response.freezed.dart';
part 'get_api_v1_no_tags_endpoint_response.g.dart';

@Freezed(fromJson: false, toJson: false)
class GetApiV1NoTagsEndpointResponse with _$GetApiV1NoTagsEndpointResponse {
  const GetApiV1NoTagsEndpointResponse._();

  const factory GetApiV1NoTagsEndpointResponse({
    @JsonKey(includeIfNull: false) String? noTagsField,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool noTagsFieldPresent,
  }) = _GetApiV1NoTagsEndpointResponse;

  factory GetApiV1NoTagsEndpointResponse.fromJson(Map<String, Object?> json) {
    final data = _GetApiV1NoTagsEndpointResponseJson.fromJson(json);
    return GetApiV1NoTagsEndpointResponse(
      noTagsField: data.noTagsField,
      noTagsFieldPresent: json.containsKey('noTagsField'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _GetApiV1NoTagsEndpointResponseJson(
      noTagsField: noTagsField,
    ).toJson();
    if (noTagsField == null) {
      if (noTagsFieldPresent) {
        json['noTagsField'] = null;
      } else {
        json.remove('noTagsField');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _GetApiV1NoTagsEndpointResponseJson {
  const _GetApiV1NoTagsEndpointResponseJson({
    this.noTagsField,
  });

  factory _GetApiV1NoTagsEndpointResponseJson.fromJson(
          Map<String, Object?> json) =>
      _$GetApiV1NoTagsEndpointResponseJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final String? noTagsField;

  Map<String, Object?> toJson() =>
      _$GetApiV1NoTagsEndpointResponseJsonToJson(this);
}
