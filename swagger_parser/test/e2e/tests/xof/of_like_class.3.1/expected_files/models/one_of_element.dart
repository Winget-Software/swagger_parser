// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'enum_class.dart';

part 'one_of_element.freezed.dart';
part 'one_of_element.g.dart';

@Freezed(fromJson: false, toJson: false)
class OneOfElement with _$OneOfElement {
  const OneOfElement._();

  const factory OneOfElement({
    @JsonKey(includeIfNull: true) required EnumClass? nullableButRequiredClass,
    @JsonKey(includeIfNull: true)
    required List<int>? requiredNullableListNonNullItems,
    @JsonKey(includeIfNull: true)
    required List<int?>? requiredNullableListNullableItems,
    @JsonKey(includeIfNull: false)
    @Default(EnumClass.value1)
    EnumClass? anyClass,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool anyClassPresent,
    @JsonKey(includeIfNull: false) @Default([]) List<EnumClass>? oneType,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool oneTypePresent,
    @JsonKey(includeIfNull: false) @Default([]) List<EnumClass>? nullableType,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool nullableTypePresent,
    @JsonKey(includeIfNull: false) EnumClass? allClass,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool allClassPresent,
    @JsonKey(includeIfNull: false) EnumClass? oneClass,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool oneClassPresent,
    @JsonKey(includeIfNull: false) int? allType,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool allTypePresent,
    @JsonKey(includeIfNull: false) DateTime? anyType,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool anyTypePresent,
    @JsonKey(includeIfNull: false) EnumClass? nullableClass,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool nullableClassPresent,
    @JsonKey(includeIfNull: false) List<int>? nullableListNonNullItems,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool nullableListNonNullItemsPresent,
    @JsonKey(includeIfNull: false) List<int?>? nullableListNullableItems,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool nullableListNullableItemsPresent,
  }) = _OneOfElement;

  factory OneOfElement.fromJson(Map<String, Object?> json) {
    final data = _OneOfElementJson.fromJson(json);
    return OneOfElement(
      nullableButRequiredClass: data.nullableButRequiredClass,
      requiredNullableListNonNullItems: data.requiredNullableListNonNullItems,
      requiredNullableListNullableItems: data.requiredNullableListNullableItems,
      anyClass: data.anyClass,
      anyClassPresent: json.containsKey('anyClass'),
      oneType: data.oneType,
      oneTypePresent: json.containsKey('oneType'),
      nullableType: data.nullableType,
      nullableTypePresent: json.containsKey('nullableType'),
      allClass: data.allClass,
      allClassPresent: json.containsKey('allClass'),
      oneClass: data.oneClass,
      oneClassPresent: json.containsKey('oneClass'),
      allType: data.allType,
      allTypePresent: json.containsKey('allType'),
      anyType: data.anyType,
      anyTypePresent: json.containsKey('anyType'),
      nullableClass: data.nullableClass,
      nullableClassPresent: json.containsKey('nullableClass'),
      nullableListNonNullItems: data.nullableListNonNullItems,
      nullableListNonNullItemsPresent:
          json.containsKey('nullableListNonNullItems'),
      nullableListNullableItems: data.nullableListNullableItems,
      nullableListNullableItemsPresent:
          json.containsKey('nullableListNullableItems'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _OneOfElementJson(
      nullableButRequiredClass: nullableButRequiredClass,
      requiredNullableListNonNullItems: requiredNullableListNonNullItems,
      requiredNullableListNullableItems: requiredNullableListNullableItems,
      anyClass: anyClass,
      oneType: oneType,
      nullableType: nullableType,
      allClass: allClass,
      oneClass: oneClass,
      allType: allType,
      anyType: anyType,
      nullableClass: nullableClass,
      nullableListNonNullItems: nullableListNonNullItems,
      nullableListNullableItems: nullableListNullableItems,
    ).toJson();
    if (anyClass == null) {
      if (anyClassPresent) {
        json['anyClass'] = null;
      } else {
        json.remove('anyClass');
      }
    }
    if (oneType == null) {
      if (oneTypePresent) {
        json['oneType'] = null;
      } else {
        json.remove('oneType');
      }
    }
    if (nullableType == null) {
      if (nullableTypePresent) {
        json['nullableType'] = null;
      } else {
        json.remove('nullableType');
      }
    }
    if (allClass == null) {
      if (allClassPresent) {
        json['allClass'] = null;
      } else {
        json.remove('allClass');
      }
    }
    if (oneClass == null) {
      if (oneClassPresent) {
        json['oneClass'] = null;
      } else {
        json.remove('oneClass');
      }
    }
    if (allType == null) {
      if (allTypePresent) {
        json['allType'] = null;
      } else {
        json.remove('allType');
      }
    }
    if (anyType == null) {
      if (anyTypePresent) {
        json['anyType'] = null;
      } else {
        json.remove('anyType');
      }
    }
    if (nullableClass == null) {
      if (nullableClassPresent) {
        json['nullableClass'] = null;
      } else {
        json.remove('nullableClass');
      }
    }
    if (nullableListNonNullItems == null) {
      if (nullableListNonNullItemsPresent) {
        json['nullableListNonNullItems'] = null;
      } else {
        json.remove('nullableListNonNullItems');
      }
    }
    if (nullableListNullableItems == null) {
      if (nullableListNullableItemsPresent) {
        json['nullableListNullableItems'] = null;
      } else {
        json.remove('nullableListNullableItems');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _OneOfElementJson {
  const _OneOfElementJson({
    required this.nullableButRequiredClass,
    required this.requiredNullableListNonNullItems,
    required this.requiredNullableListNullableItems,
    this.anyClass = EnumClass.value1,
    this.oneType = const [],
    this.nullableType = const [],
    this.allClass,
    this.oneClass,
    this.allType,
    this.anyType,
    this.nullableClass,
    this.nullableListNonNullItems,
    this.nullableListNullableItems,
  });

  factory _OneOfElementJson.fromJson(Map<String, Object?> json) =>
      _$OneOfElementJsonFromJson(json);

  @JsonKey(includeIfNull: true)
  final EnumClass? nullableButRequiredClass;
  @JsonKey(includeIfNull: true)
  final List<int>? requiredNullableListNonNullItems;
  @JsonKey(includeIfNull: true)
  final List<int?>? requiredNullableListNullableItems;
  @JsonKey(includeIfNull: false)
  final EnumClass? anyClass;
  @JsonKey(includeIfNull: false)
  final List<EnumClass>? oneType;
  @JsonKey(includeIfNull: false)
  final List<EnumClass>? nullableType;
  @JsonKey(includeIfNull: false)
  final EnumClass? allClass;
  @JsonKey(includeIfNull: false)
  final EnumClass? oneClass;
  @JsonKey(includeIfNull: false)
  final int? allType;
  @JsonKey(includeIfNull: false)
  final DateTime? anyType;
  @JsonKey(includeIfNull: false)
  final EnumClass? nullableClass;
  @JsonKey(includeIfNull: false)
  final List<int>? nullableListNonNullItems;
  @JsonKey(includeIfNull: false)
  final List<int?>? nullableListNullableItems;

  Map<String, Object?> toJson() => _$OneOfElementJsonToJson(this);
}
