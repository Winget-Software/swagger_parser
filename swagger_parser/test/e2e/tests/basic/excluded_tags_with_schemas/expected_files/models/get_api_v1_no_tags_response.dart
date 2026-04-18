// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_api_v1_no_tags_response.freezed.dart';
part 'get_api_v1_no_tags_response.g.dart';

@Freezed(fromJson: false, toJson: false)
class GetApiV1NoTagsResponse with _$GetApiV1NoTagsResponse {
  const GetApiV1NoTagsResponse._();

  const factory GetApiV1NoTagsResponse({
    @JsonKey(includeIfNull: false) String? result,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool resultPresent,
  }) = _GetApiV1NoTagsResponse;

  factory GetApiV1NoTagsResponse.fromJson(Map<String, Object?> json) {
    final data = _GetApiV1NoTagsResponseJson.fromJson(json);
    return GetApiV1NoTagsResponse(
      result: data.result,
      resultPresent: json.containsKey('result'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _GetApiV1NoTagsResponseJson(
      result: result,
    ).toJson();
    if (result == null) {
      if (resultPresent) {
        json['result'] = null;
      } else {
        json.remove('result');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _GetApiV1NoTagsResponseJson {
  const _GetApiV1NoTagsResponseJson({
    this.result,
  });

  factory _GetApiV1NoTagsResponseJson.fromJson(Map<String, Object?> json) =>
      _$GetApiV1NoTagsResponseJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final String? result;

  Map<String, Object?> toJson() => _$GetApiV1NoTagsResponseJsonToJson(this);
}
