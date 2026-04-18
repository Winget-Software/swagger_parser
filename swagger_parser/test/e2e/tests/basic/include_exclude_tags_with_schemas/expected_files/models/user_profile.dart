// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@Freezed(fromJson: false, toJson: false)
class UserProfile with _$UserProfile {
  const UserProfile._();

  const factory UserProfile({
    @JsonKey(includeIfNull: false) String? firstName,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool firstNamePresent,
    @JsonKey(includeIfNull: false) String? lastName,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool lastNamePresent,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, Object?> json) {
    final data = _UserProfileJson.fromJson(json);
    return UserProfile(
      firstName: data.firstName,
      firstNamePresent: json.containsKey('firstName'),
      lastName: data.lastName,
      lastNamePresent: json.containsKey('lastName'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _UserProfileJson(
      firstName: firstName,
      lastName: lastName,
    ).toJson();
    if (firstName == null) {
      if (firstNamePresent) {
        json['firstName'] = null;
      } else {
        json.remove('firstName');
      }
    }
    if (lastName == null) {
      if (lastNamePresent) {
        json['lastName'] = null;
      } else {
        json.remove('lastName');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _UserProfileJson {
  const _UserProfileJson({
    this.firstName,
    this.lastName,
  });

  factory _UserProfileJson.fromJson(Map<String, Object?> json) =>
      _$UserProfileJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final String? firstName;
  @JsonKey(includeIfNull: false)
  final String? lastName;

  Map<String, Object?> toJson() => _$UserProfileJsonToJson(this);
}
