// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'nested_included.dart';
import 'anchor_reference.dart';

part 'api_v1_tagged_as_include_should_be_included_request_body.freezed.dart';
part 'api_v1_tagged_as_include_should_be_included_request_body.g.dart';

@Freezed(fromJson: false, toJson: false)
class ApiV1TaggedAsIncludeShouldBeIncludedRequestBody
    with _$ApiV1TaggedAsIncludeShouldBeIncludedRequestBody {
  const ApiV1TaggedAsIncludeShouldBeIncludedRequestBody._();

  const factory ApiV1TaggedAsIncludeShouldBeIncludedRequestBody({
    /// This field should be included
    required String includedField,
    @JsonKey(includeIfNull: false) NestedIncluded? nestedIncluded,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool nestedIncludedPresent,
    @JsonKey(includeIfNull: false) AnchorReference? anchorReference,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool anchorReferencePresent,
  }) = _ApiV1TaggedAsIncludeShouldBeIncludedRequestBody;

  factory ApiV1TaggedAsIncludeShouldBeIncludedRequestBody.fromJson(
      Map<String, Object?> json) {
    final data =
        _ApiV1TaggedAsIncludeShouldBeIncludedRequestBodyJson.fromJson(json);
    return ApiV1TaggedAsIncludeShouldBeIncludedRequestBody(
      includedField: data.includedField,
      nestedIncluded: data.nestedIncluded,
      nestedIncludedPresent: json.containsKey('nestedIncluded'),
      anchorReference: data.anchorReference,
      anchorReferencePresent: json.containsKey('anchorReference'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _ApiV1TaggedAsIncludeShouldBeIncludedRequestBodyJson(
      includedField: includedField,
      nestedIncluded: nestedIncluded,
      anchorReference: anchorReference,
    ).toJson();
    if (nestedIncluded == null) {
      if (nestedIncludedPresent) {
        json['nestedIncluded'] = null;
      } else {
        json.remove('nestedIncluded');
      }
    }
    if (anchorReference == null) {
      if (anchorReferencePresent) {
        json['anchorReference'] = null;
      } else {
        json.remove('anchorReference');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _ApiV1TaggedAsIncludeShouldBeIncludedRequestBodyJson {
  const _ApiV1TaggedAsIncludeShouldBeIncludedRequestBodyJson({
    required this.includedField,
    this.nestedIncluded,
    this.anchorReference,
  });

  factory _ApiV1TaggedAsIncludeShouldBeIncludedRequestBodyJson.fromJson(
          Map<String, Object?> json) =>
      _$ApiV1TaggedAsIncludeShouldBeIncludedRequestBodyJsonFromJson(json);

  /// This field should be included
  final String includedField;
  @JsonKey(includeIfNull: false)
  final NestedIncluded? nestedIncluded;
  @JsonKey(includeIfNull: false)
  final AnchorReference? anchorReference;

  Map<String, Object?> toJson() =>
      _$ApiV1TaggedAsIncludeShouldBeIncludedRequestBodyJsonToJson(this);
}
