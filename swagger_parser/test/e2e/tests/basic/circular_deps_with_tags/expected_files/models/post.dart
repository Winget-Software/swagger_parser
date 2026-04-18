// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'comment.dart';
import 'user.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@Freezed(fromJson: false, toJson: false)
class Post with _$Post {
  const Post._();

  const factory Post({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool idPresent,
    @JsonKey(includeIfNull: false) String? title,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool titlePresent,
    @JsonKey(includeIfNull: false) User? author,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool authorPresent,
    @JsonKey(includeIfNull: false) List<Comment>? comments,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool commentsPresent,
  }) = _Post;

  factory Post.fromJson(Map<String, Object?> json) {
    final data = _PostJson.fromJson(json);
    return Post(
      id: data.id,
      idPresent: json.containsKey('id'),
      title: data.title,
      titlePresent: json.containsKey('title'),
      author: data.author,
      authorPresent: json.containsKey('author'),
      comments: data.comments,
      commentsPresent: json.containsKey('comments'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _PostJson(
      id: id,
      title: title,
      author: author,
      comments: comments,
    ).toJson();
    if (id == null) {
      if (idPresent) {
        json['id'] = null;
      } else {
        json.remove('id');
      }
    }
    if (title == null) {
      if (titlePresent) {
        json['title'] = null;
      } else {
        json.remove('title');
      }
    }
    if (author == null) {
      if (authorPresent) {
        json['author'] = null;
      } else {
        json.remove('author');
      }
    }
    if (comments == null) {
      if (commentsPresent) {
        json['comments'] = null;
      } else {
        json.remove('comments');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _PostJson {
  const _PostJson({
    this.id,
    this.title,
    this.author,
    this.comments,
  });

  factory _PostJson.fromJson(Map<String, Object?> json) =>
      _$PostJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final int? id;
  @JsonKey(includeIfNull: false)
  final String? title;
  @JsonKey(includeIfNull: false)
  final User? author;
  @JsonKey(includeIfNull: false)
  final List<Comment>? comments;

  Map<String, Object?> toJson() => _$PostJsonToJson(this);
}
