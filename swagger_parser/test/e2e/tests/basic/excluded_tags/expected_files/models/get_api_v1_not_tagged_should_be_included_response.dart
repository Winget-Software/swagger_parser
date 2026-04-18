// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'included_data.dart';

part 'get_api_v1_not_tagged_should_be_included_response.freezed.dart';
part 'get_api_v1_not_tagged_should_be_included_response.g.dart';

@Freezed(fromJson: false, toJson: false)
class GetApiV1NotTaggedShouldBeIncludedResponse
    with _$GetApiV1NotTaggedShouldBeIncludedResponse {
  const GetApiV1NotTaggedShouldBeIncludedResponse._();

  const factory GetApiV1NotTaggedShouldBeIncludedResponse({
    required String includedResponse,
    @JsonKey(includeIfNull: false) IncludedData? includedData,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool includedDataPresent,
  }) = _GetApiV1NotTaggedShouldBeIncludedResponse;

  factory GetApiV1NotTaggedShouldBeIncludedResponse.fromJson(
      Map<String, Object?> json) {
    final data = _GetApiV1NotTaggedShouldBeIncludedResponseJson.fromJson(json);
    return GetApiV1NotTaggedShouldBeIncludedResponse(
      includedResponse: data.includedResponse,
      includedData: data.includedData,
      includedDataPresent: json.containsKey('includedData'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _GetApiV1NotTaggedShouldBeIncludedResponseJson(
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
class _GetApiV1NotTaggedShouldBeIncludedResponseJson {
  const _GetApiV1NotTaggedShouldBeIncludedResponseJson({
    required this.includedResponse,
    this.includedData,
  });

  factory _GetApiV1NotTaggedShouldBeIncludedResponseJson.fromJson(
          Map<String, Object?> json) =>
      _$GetApiV1NotTaggedShouldBeIncludedResponseJsonFromJson(json);

  final String includedResponse;
  @JsonKey(includeIfNull: false)
  final IncludedData? includedData;

  Map<String, Object?> toJson() =>
      _$GetApiV1NotTaggedShouldBeIncludedResponseJsonToJson(this);
}
