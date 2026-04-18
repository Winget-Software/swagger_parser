// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'included_nested.freezed.dart';
part 'included_nested.g.dart';

@Freezed(fromJson: false, toJson: false)
class IncludedNested with _$IncludedNested {
  const IncludedNested._();

  const factory IncludedNested({
    @JsonKey(includeIfNull: false) String? includedInner,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool includedInnerPresent,
  }) = _IncludedNested;

  factory IncludedNested.fromJson(Map<String, Object?> json) {
    final data = _IncludedNestedJson.fromJson(json);
    return IncludedNested(
      includedInner: data.includedInner,
      includedInnerPresent: json.containsKey('includedInner'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _IncludedNestedJson(
      includedInner: includedInner,
    ).toJson();
    if (includedInner == null) {
      if (includedInnerPresent) {
        json['includedInner'] = null;
      } else {
        json.remove('includedInner');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _IncludedNestedJson {
  const _IncludedNestedJson({
    this.includedInner,
  });

  factory _IncludedNestedJson.fromJson(Map<String, Object?> json) =>
      _$IncludedNestedJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final String? includedInner;

  Map<String, Object?> toJson() => _$IncludedNestedJsonToJson(this);
}
