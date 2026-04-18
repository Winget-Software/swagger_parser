// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_dto.dart';

part 'nullable_user_dto.freezed.dart';
part 'nullable_user_dto.g.dart';

@Freezed(fromJson: false, toJson: false)
class NullableUserDto with _$NullableUserDto {
  const NullableUserDto._();

  const factory NullableUserDto({
    @JsonKey(includeIfNull: false) UserDto? data,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool dataPresent,
  }) = _NullableUserDto;

  factory NullableUserDto.fromJson(Map<String, Object?> json) {
    final data = _NullableUserDtoJson.fromJson(json);
    return NullableUserDto(
      data: data.data,
      dataPresent: json.containsKey('data'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _NullableUserDtoJson(
      data: data,
    ).toJson();
    if (data == null) {
      if (dataPresent) {
        json['data'] = null;
      } else {
        json.remove('data');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _NullableUserDtoJson {
  const _NullableUserDtoJson({
    this.data,
  });

  factory _NullableUserDtoJson.fromJson(Map<String, Object?> json) =>
      _$NullableUserDtoJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final UserDto? data;

  Map<String, Object?> toJson() => _$NullableUserDtoJsonToJson(this);
}
