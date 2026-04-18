// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_profile.dart';
import 'user_role.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@Freezed(fromJson: false, toJson: false)
class User with _$User {
  const User._();

  const factory User({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool idPresent,
    @JsonKey(includeIfNull: false) String? email,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool emailPresent,
    @JsonKey(includeIfNull: false) UserRole? role,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool rolePresent,
    @JsonKey(includeIfNull: false) UserProfile? profile,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool profilePresent,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) {
    final data = _UserJson.fromJson(json);
    return User(
      id: data.id,
      idPresent: json.containsKey('id'),
      email: data.email,
      emailPresent: json.containsKey('email'),
      role: data.role,
      rolePresent: json.containsKey('role'),
      profile: data.profile,
      profilePresent: json.containsKey('profile'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _UserJson(
      id: id,
      email: email,
      role: role,
      profile: profile,
    ).toJson();
    if (id == null) {
      if (idPresent) {
        json['id'] = null;
      } else {
        json.remove('id');
      }
    }
    if (email == null) {
      if (emailPresent) {
        json['email'] = null;
      } else {
        json.remove('email');
      }
    }
    if (role == null) {
      if (rolePresent) {
        json['role'] = null;
      } else {
        json.remove('role');
      }
    }
    if (profile == null) {
      if (profilePresent) {
        json['profile'] = null;
      } else {
        json.remove('profile');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _UserJson {
  const _UserJson({
    this.id,
    this.email,
    this.role,
    this.profile,
  });

  factory _UserJson.fromJson(Map<String, Object?> json) =>
      _$UserJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final int? id;
  @JsonKey(includeIfNull: false)
  final String? email;
  @JsonKey(includeIfNull: false)
  final UserRole? role;
  @JsonKey(includeIfNull: false)
  final UserProfile? profile;

  Map<String, Object?> toJson() => _$UserJsonToJson(this);
}
