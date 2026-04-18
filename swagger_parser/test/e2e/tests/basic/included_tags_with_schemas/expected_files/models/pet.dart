// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';
import 'pet_availability.dart';

part 'pet.freezed.dart';
part 'pet.g.dart';

@Freezed(fromJson: false, toJson: false)
class Pet with _$Pet {
  const Pet._();

  const factory Pet({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool idPresent,
    @JsonKey(includeIfNull: false) String? name,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool namePresent,
    @JsonKey(includeIfNull: false) PetAvailability? availability,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool availabilityPresent,
    @JsonKey(includeIfNull: false) Category? category,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool categoryPresent,
  }) = _Pet;

  factory Pet.fromJson(Map<String, Object?> json) {
    final data = _PetJson.fromJson(json);
    return Pet(
      id: data.id,
      idPresent: json.containsKey('id'),
      name: data.name,
      namePresent: json.containsKey('name'),
      availability: data.availability,
      availabilityPresent: json.containsKey('availability'),
      category: data.category,
      categoryPresent: json.containsKey('category'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _PetJson(
      id: id,
      name: name,
      availability: availability,
      category: category,
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
    if (availability == null) {
      if (availabilityPresent) {
        json['availability'] = null;
      } else {
        json.remove('availability');
      }
    }
    if (category == null) {
      if (categoryPresent) {
        json['category'] = null;
      } else {
        json.remove('category');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _PetJson {
  const _PetJson({
    this.id,
    this.name,
    this.availability,
    this.category,
  });

  factory _PetJson.fromJson(Map<String, Object?> json) =>
      _$PetJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final int? id;
  @JsonKey(includeIfNull: false)
  final String? name;
  @JsonKey(includeIfNull: false)
  final PetAvailability? availability;
  @JsonKey(includeIfNull: false)
  final Category? category;

  Map<String, Object?> toJson() => _$PetJsonToJson(this);
}
