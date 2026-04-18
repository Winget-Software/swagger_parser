// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'included_nested.dart';
import 'audit_data.dart';

part 'api_v1_tagged_as_exclude_but_included_should_be_included_request_body.freezed.dart';
part 'api_v1_tagged_as_exclude_but_included_should_be_included_request_body.g.dart';

@Freezed(fromJson: false, toJson: false)
class ApiV1TaggedAsExcludeButIncludedShouldBeIncludedRequestBody
    with _$ApiV1TaggedAsExcludeButIncludedShouldBeIncludedRequestBody {
  const ApiV1TaggedAsExcludeButIncludedShouldBeIncludedRequestBody._();

  const factory ApiV1TaggedAsExcludeButIncludedShouldBeIncludedRequestBody({
    /// This field should be included (include tag wins)
    required String includedField,
    @JsonKey(includeIfNull: false) IncludedNested? includedNested,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool includedNestedPresent,
    @JsonKey(includeIfNull: false) AuditData? auditData,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool auditDataPresent,
  }) = _ApiV1TaggedAsExcludeButIncludedShouldBeIncludedRequestBody;

  factory ApiV1TaggedAsExcludeButIncludedShouldBeIncludedRequestBody.fromJson(
      Map<String, Object?> json) {
    final data = _ApiV1TaggedAsExcludeButIncludedShouldBeIncludedRequestBodyJson
        .fromJson(json);
    return ApiV1TaggedAsExcludeButIncludedShouldBeIncludedRequestBody(
      includedField: data.includedField,
      includedNested: data.includedNested,
      includedNestedPresent: json.containsKey('includedNested'),
      auditData: data.auditData,
      auditDataPresent: json.containsKey('auditData'),
    );
  }

  Map<String, Object?> toJson() {
    final json =
        _ApiV1TaggedAsExcludeButIncludedShouldBeIncludedRequestBodyJson(
      includedField: includedField,
      includedNested: includedNested,
      auditData: auditData,
    ).toJson();
    if (includedNested == null) {
      if (includedNestedPresent) {
        json['includedNested'] = null;
      } else {
        json.remove('includedNested');
      }
    }
    if (auditData == null) {
      if (auditDataPresent) {
        json['auditData'] = null;
      } else {
        json.remove('auditData');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _ApiV1TaggedAsExcludeButIncludedShouldBeIncludedRequestBodyJson {
  const _ApiV1TaggedAsExcludeButIncludedShouldBeIncludedRequestBodyJson({
    required this.includedField,
    this.includedNested,
    this.auditData,
  });

  factory _ApiV1TaggedAsExcludeButIncludedShouldBeIncludedRequestBodyJson.fromJson(
          Map<String, Object?> json) =>
      _$ApiV1TaggedAsExcludeButIncludedShouldBeIncludedRequestBodyJsonFromJson(
          json);

  /// This field should be included (include tag wins)
  final String includedField;
  @JsonKey(includeIfNull: false)
  final IncludedNested? includedNested;
  @JsonKey(includeIfNull: false)
  final AuditData? auditData;

  Map<String, Object?> toJson() =>
      _$ApiV1TaggedAsExcludeButIncludedShouldBeIncludedRequestBodyJsonToJson(
          this);
}
