// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

/// A category for a pet
@Freezed(fromJson: false, toJson: false)
class Category with _$Category {
  const Category._();

  const factory Category({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool idPresent,
    @JsonKey(includeIfNull: false) String? name,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool namePresent,
  }) = _Category;

  factory Category.fromJson(Map<String, Object?> json) {
    final data = _CategoryJson.fromJson(json);
    return Category(
      id: data.id,
      idPresent: json.containsKey('id'),
      name: data.name,
      namePresent: json.containsKey('name'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _CategoryJson(
      id: id,
      name: name,
    ).toJson();
    if (id == null) {
      if (idPresent) {
        json['id'] = null;
      } else {
        json.remove('id');
      }
    }
    if (name == null) {
      if (namePresent) {
        json['name'] = null;
      } else {
        json.remove('name');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _CategoryJson {
  const _CategoryJson({
    this.id,
    this.name,
  });

  factory _CategoryJson.fromJson(Map<String, Object?> json) =>
      _$CategoryJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final int? id;
  @JsonKey(includeIfNull: false)
  final String? name;

  Map<String, Object?> toJson() => _$CategoryJsonToJson(this);
}
