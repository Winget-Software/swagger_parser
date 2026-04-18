// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'included_data.dart';

part 'get_api_v1_tagged_as_include_should_be_included_response.freezed.dart';
part 'get_api_v1_tagged_as_include_should_be_included_response.g.dart';

@Freezed(fromJson: false, toJson: false)
class GetApiV1TaggedAsIncludeShouldBeIncludedResponse
    with _$GetApiV1TaggedAsIncludeShouldBeIncludedResponse {
  const GetApiV1TaggedAsIncludeShouldBeIncludedResponse._();

  const factory GetApiV1TaggedAsIncludeShouldBeIncludedResponse({
    required String includedResponse,
    @JsonKey(includeIfNull: false) IncludedData? includedData,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool includedDataPresent,
  }) = _GetApiV1TaggedAsIncludeShouldBeIncludedResponse;

  factory GetApiV1TaggedAsIncludeShouldBeIncludedResponse.fromJson(
      Map<String, Object?> json) {
    final data =
        _GetApiV1TaggedAsIncludeShouldBeIncludedResponseJson.fromJson(json);
    return GetApiV1TaggedAsIncludeShouldBeIncludedResponse(
      includedResponse: data.includedResponse,
      includedData: data.includedData,
      includedDataPresent: json.containsKey('includedData'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _GetApiV1TaggedAsIncludeShouldBeIncludedResponseJson(
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
class _GetApiV1TaggedAsIncludeShouldBeIncludedResponseJson {
  const _GetApiV1TaggedAsIncludeShouldBeIncludedResponseJson({
    required this.includedResponse,
    this.includedData,
  });

  factory _GetApiV1TaggedAsIncludeShouldBeIncludedResponseJson.fromJson(
          Map<String, Object?> json) =>
      _$GetApiV1TaggedAsIncludeShouldBeIncludedResponseJsonFromJson(json);

  final String includedResponse;
  @JsonKey(includeIfNull: false)
  final IncludedData? includedData;

  Map<String, Object?> toJson() =>
      _$GetApiV1TaggedAsIncludeShouldBeIncludedResponseJsonToJson(this);
}
