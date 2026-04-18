// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'included_data.dart';

part 'get_api_v1_tagged_as_exclude_but_included_should_be_included_response.freezed.dart';
part 'get_api_v1_tagged_as_exclude_but_included_should_be_included_response.g.dart';

@Freezed(fromJson: false, toJson: false)
class GetApiV1TaggedAsExcludeButIncludedShouldBeIncludedResponse
    with _$GetApiV1TaggedAsExcludeButIncludedShouldBeIncludedResponse {
  const GetApiV1TaggedAsExcludeButIncludedShouldBeIncludedResponse._();

  const factory GetApiV1TaggedAsExcludeButIncludedShouldBeIncludedResponse({
    required String includedResponse,
    @JsonKey(includeIfNull: false) IncludedData? includedData,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool includedDataPresent,
  }) = _GetApiV1TaggedAsExcludeButIncludedShouldBeIncludedResponse;

  factory GetApiV1TaggedAsExcludeButIncludedShouldBeIncludedResponse.fromJson(
      Map<String, Object?> json) {
    final data = _GetApiV1TaggedAsExcludeButIncludedShouldBeIncludedResponseJson
        .fromJson(json);
    return GetApiV1TaggedAsExcludeButIncludedShouldBeIncludedResponse(
      includedResponse: data.includedResponse,
      includedData: data.includedData,
      includedDataPresent: json.containsKey('includedData'),
    );
  }

  Map<String, Object?> toJson() {
    final json =
        _GetApiV1TaggedAsExcludeButIncludedShouldBeIncludedResponseJson(
      includedResponse: includedResponse,
      includedData: includedData,
    ).toJson();
    if (includedData == null) {
      if (includedDataPresent) {
        json['includedData'] = null;
      } else {
        json.remove('includedData');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _GetApiV1TaggedAsExcludeButIncludedShouldBeIncludedResponseJson {
  const _GetApiV1TaggedAsExcludeButIncludedShouldBeIncludedResponseJson({
    required this.includedResponse,
    this.includedData,
  });

  factory _GetApiV1TaggedAsExcludeButIncludedShouldBeIncludedResponseJson.fromJson(
          Map<String, Object?> json) =>
      _$GetApiV1TaggedAsExcludeButIncludedShouldBeIncludedResponseJsonFromJson(
          json);

  final String includedResponse;
  @JsonKey(includeIfNull: false)
  final IncludedData? includedData;

  Map<String, Object?> toJson() =>
      _$GetApiV1TaggedAsExcludeButIncludedShouldBeIncludedResponseJsonToJson(
          this);
}
