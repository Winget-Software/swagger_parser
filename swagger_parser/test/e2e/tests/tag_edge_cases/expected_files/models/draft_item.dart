// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'draft_item.freezed.dart';
part 'draft_item.g.dart';

@Freezed(fromJson: false, toJson: false)
class DraftItem with _$DraftItem {
  const DraftItem._();

  const factory DraftItem({
    @JsonKey(includeIfNull: false) String? id,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool idPresent,
    @JsonKey(includeIfNull: false) String? content,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool contentPresent,
    @JsonKey(includeIfNull: false) bool? isDraft,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool isDraftPresent,
  }) = _DraftItem;

  factory DraftItem.fromJson(Map<String, Object?> json) {
    final data = _DraftItemJson.fromJson(json);
    return DraftItem(
      id: data.id,
      idPresent: json.containsKey('id'),
      content: data.content,
      contentPresent: json.containsKey('content'),
      isDraft: data.isDraft,
      isDraftPresent: json.containsKey('isDraft'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _DraftItemJson(
      id: id,
      content: content,
      isDraft: isDraft,
    ).toJson();
    if (id == null) {
      if (idPresent) {
        json['id'] = null;
      } else {
        json.remove('id');
      }
    }
    if (content == null) {
      if (contentPresent) {
        json['content'] = null;
      } else {
        json.remove('content');
      }
    }
    if (isDraft == null) {
      if (isDraftPresent) {
        json['isDraft'] = null;
      } else {
        json.remove('isDraft');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _DraftItemJson {
  const _DraftItemJson({
    this.id,
    this.content,
    this.isDraft,
  });

  factory _DraftItemJson.fromJson(Map<String, Object?> json) =>
      _$DraftItemJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final String? id;
  @JsonKey(includeIfNull: false)
  final String? content;
  @JsonKey(includeIfNull: false)
  final bool? isDraft;

  Map<String, Object?> toJson() => _$DraftItemJsonToJson(this);
}
