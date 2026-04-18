// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';
import 'pet_status.dart';
import 'tag.dart';

part 'pet.freezed.dart';
part 'pet.g.dart';

/// A pet for sale in the pet store
@Freezed(fromJson: false, toJson: false)
class Pet with _$Pet {
  const Pet._();

  const factory Pet({
    required String name,
    required List<String> photoUrls,
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool idPresent,
    @JsonKey(includeIfNull: false) Category? category,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool categoryPresent,
    @JsonKey(includeIfNull: false) List<Tag>? tags,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool tagsPresent,

    /// pet status in the store
    @JsonKey(includeIfNull: false) PetStatus? status,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool statusPresent,
  }) = _Pet;

  factory Pet.fromJson(Map<String, Object?> json) {
    final data = _PetJson.fromJson(json);
    return Pet(
      name: data.name,
      photoUrls: data.photoUrls,
      id: data.id,
      idPresent: json.containsKey('id'),
      category: data.category,
      categoryPresent: json.containsKey('category'),
      tags: data.tags,
      tagsPresent: json.containsKey('tags'),
      status: data.status,
      statusPresent: json.containsKey('status'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _PetJson(
      name: name,
      photoUrls: photoUrls,
      id: id,
      category: category,
      tags: tags,
      status: status,
    ).toJson();
    if (id == null) {
      if (idPresent) {
        json['id'] = null;
      } else {
        json.remove('id');
      }
    }
    if (category == null) {
      if (categoryPresent) {
        json['category'] = null;
      } else {
        json.remove('category');
      }
    }
    if (tags == null) {
      if (tagsPresent) {
        json['tags'] = null;
      } else {
        json.remove('tags');
      }
    }
    if (status == null) {
      if (statusPresent) {
        json['status'] = null;
      } else {
        json.remove('status');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _PetJson {
  const _PetJson({
    required this.name,
    required this.photoUrls,
    this.id,
    this.category,
    this.tags,
    this.status,
  });

  factory _PetJson.fromJson(Map<String, Object?> json) =>
      _$PetJsonFromJson(json);

  final String name;
  final List<String> photoUrls;
  @JsonKey(includeIfNull: false)
  final int? id;
  @JsonKey(includeIfNull: false)
  final Category? category;
  @JsonKey(includeIfNull: false)
  final List<Tag>? tags;

  /// pet status in the store
  @JsonKey(includeIfNull: false)
  final PetStatus? status;

  Map<String, Object?> toJson() => _$PetJsonToJson(this);
}
