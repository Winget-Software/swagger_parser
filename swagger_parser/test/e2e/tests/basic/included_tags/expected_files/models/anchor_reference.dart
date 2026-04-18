// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'anchor_reference.freezed.dart';
part 'anchor_reference.g.dart';

@Freezed(fromJson: false, toJson: false)
class AnchorReference with _$AnchorReference {
  const AnchorReference._();

  const factory AnchorReference({
    /// Shared field from anchor
    @JsonKey(includeIfNull: false) String? sharedField1,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool sharedField1Present,
    @JsonKey(includeIfNull: false) int? sharedField2,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool sharedField2Present,
  }) = _AnchorReference;

  factory AnchorReference.fromJson(Map<String, Object?> json) {
    final data = _AnchorReferenceJson.fromJson(json);
    return AnchorReference(
      sharedField1: data.sharedField1,
      sharedField1Present: json.containsKey('sharedField1'),
      sharedField2: data.sharedField2,
      sharedField2Present: json.containsKey('sharedField2'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _AnchorReferenceJson(
      sharedField1: sharedField1,
      sharedField2: sharedField2,
    ).toJson();
    if (sharedField1 == null) {
      if (sharedField1Present) {
        json['sharedField1'] = null;
      } else {
        json.remove('sharedField1');
      }
    }
    if (sharedField2 == null) {
      if (sharedField2Present) {
        json['sharedField2'] = null;
      } else {
        json.remove('sharedField2');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _AnchorReferenceJson {
  const _AnchorReferenceJson({
    this.sharedField1,
    this.sharedField2,
  });

  factory _AnchorReferenceJson.fromJson(Map<String, Object?> json) =>
      _$AnchorReferenceJsonFromJson(json);

  /// Shared field from anchor
  @JsonKey(includeIfNull: false)
  final String? sharedField1;
  @JsonKey(includeIfNull: false)
  final int? sharedField2;

  Map<String, Object?> toJson() => _$AnchorReferenceJsonToJson(this);
}
