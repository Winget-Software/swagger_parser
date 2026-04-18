// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'post.dart';
import 'user.dart';
import 'user_status.dart';

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
    @JsonKey(includeIfNull: false) String? name,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool namePresent,
    @JsonKey(includeIfNull: false) UserStatus? status,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool statusPresent,
    @JsonKey(includeIfNull: false) List<Post>? posts,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool postsPresent,
    @JsonKey(includeIfNull: false) List<User>? friends,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool friendsPresent,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) {
    final data = _UserJson.fromJson(json);
    return User(
      id: data.id,
      idPresent: json.containsKey('id'),
      name: data.name,
      namePresent: json.containsKey('name'),
      status: data.status,
      statusPresent: json.containsKey('status'),
      posts: data.posts,
      postsPresent: json.containsKey('posts'),
      friends: data.friends,
      friendsPresent: json.containsKey('friends'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _UserJson(
      id: id,
      name: name,
      status: status,
      posts: posts,
      friends: friends,
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
    if (status == null) {
      if (statusPresent) {
        json['status'] = null;
      } else {
        json.remove('status');
      }
    }
    if (posts == null) {
      if (postsPresent) {
        json['posts'] = null;
      } else {
        json.remove('posts');
      }
    }
    if (friends == null) {
      if (friendsPresent) {
        json['friends'] = null;
      } else {
        json.remove('friends');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _UserJson {
  const _UserJson({
    this.id,
    this.name,
    this.status,
    this.posts,
    this.friends,
  });

  factory _UserJson.fromJson(Map<String, Object?> json) =>
      _$UserJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final int? id;
  @JsonKey(includeIfNull: false)
  final String? name;
  @JsonKey(includeIfNull: false)
  final UserStatus? status;
  @JsonKey(includeIfNull: false)
  final List<Post>? posts;
  @JsonKey(includeIfNull: false)
  final List<User>? friends;

  Map<String, Object?> toJson() => _$UserJsonToJson(this);
}
