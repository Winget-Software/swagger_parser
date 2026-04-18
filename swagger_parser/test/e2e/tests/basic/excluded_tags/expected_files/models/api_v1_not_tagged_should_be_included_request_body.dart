// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'nested_included.dart';
import 'metadata.dart';

part 'api_v1_not_tagged_should_be_included_request_body.freezed.dart';
part 'api_v1_not_tagged_should_be_included_request_body.g.dart';

@Freezed(fromJson: false, toJson: false)
class ApiV1NotTaggedShouldBeIncludedRequestBody
    with _$ApiV1NotTaggedShouldBeIncludedRequestBody {
  const ApiV1NotTaggedShouldBeIncludedRequestBody._();

  const factory ApiV1NotTaggedShouldBeIncludedRequestBody({
    /// This field should be included
    required String includedField,
    @JsonKey(includeIfNull: false) NestedIncluded? nestedIncluded,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool nestedIncludedPresent,
    @JsonKey(includeIfNull: false) Metadata? metadata,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool metadataPresent,
  }) = _ApiV1NotTaggedShouldBeIncludedRequestBody;

  factory ApiV1NotTaggedShouldBeIncludedRequestBody.fromJson(
      Map<String, Object?> json) {
    final data = _ApiV1NotTaggedShouldBeIncludedRequestBodyJson.fromJson(json);
    return ApiV1NotTaggedShouldBeIncludedRequestBody(
      includedField: data.includedField,
      nestedIncluded: data.nestedIncluded,
      nestedIncludedPresent: json.containsKey('nestedIncluded'),
      metadata: data.metadata,
      metadataPresent: json.containsKey('metadata'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _ApiV1NotTaggedShouldBeIncludedRequestBodyJson(
      includedField: includedField,
      nestedIncluded: nestedIncluded,
      metadata: metadata,
    ).toJson();
    if (nestedIncluded == null) {
      if (nestedIncludedPresent) {
        json['nestedIncluded'] = null;
      } else {
        json.remove('nestedIncluded');
      }
    }
    if (metadata == null) {
      if (metadataPresent) {
        json['metadata'] = null;
      } else {
        json.remove('metadata');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _ApiV1NotTaggedShouldBeIncludedRequestBodyJson {
  const _ApiV1NotTaggedShouldBeIncludedRequestBodyJson({
    required this.includedField,
    this.nestedIncluded,
    this.metadata,
  });

  factory _ApiV1NotTaggedShouldBeIncludedRequestBodyJson.fromJson(
          Map<String, Object?> json) =>
      _$ApiV1NotTaggedShouldBeIncludedRequestBodyJsonFromJson(json);

  /// This field should be included
  final String includedField;
  @JsonKey(includeIfNull: false)
  final NestedIncluded? nestedIncluded;
  @JsonKey(includeIfNull: false)
  final Metadata? metadata;

  Map<String, Object?> toJson() =>
      _$ApiV1NotTaggedShouldBeIncludedRequestBodyJsonToJson(this);
}
