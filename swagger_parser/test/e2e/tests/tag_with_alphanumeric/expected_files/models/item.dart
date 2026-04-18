// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@Freezed(fromJson: false, toJson: false)
class Item with _$Item {
  const Item._();

  const factory Item({
    @JsonKey(includeIfNull: false) String? id,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool idPresent,
    @JsonKey(includeIfNull: false) String? name,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool namePresent,
    @JsonKey(includeIfNull: false) String? type,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool typePresent,
  }) = _Item;

  factory Item.fromJson(Map<String, Object?> json) {
    final data = _ItemJson.fromJson(json);
    return Item(
      id: data.id,
      idPresent: json.containsKey('id'),
      name: data.name,
      namePresent: json.containsKey('name'),
      type: data.type,
      typePresent: json.containsKey('type'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _ItemJson(
      id: id,
      name: name,
      type: type,
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
    if (type == null) {
      if (typePresent) {
        json['type'] = null;
      } else {
        json.remove('type');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _ItemJson {
  const _ItemJson({
    this.id,
    this.name,
    this.type,
  });

  factory _ItemJson.fromJson(Map<String, Object?> json) =>
      _$ItemJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final String? id;
  @JsonKey(includeIfNull: false)
  final String? name;
  @JsonKey(includeIfNull: false)
  final String? type;

  Map<String, Object?> toJson() => _$ItemJsonToJson(this);
}
