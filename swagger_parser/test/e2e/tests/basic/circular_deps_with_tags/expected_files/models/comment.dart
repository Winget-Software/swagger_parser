// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'post.dart';
import 'user.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@Freezed(fromJson: false, toJson: false)
class Comment with _$Comment {
  const Comment._();

  const factory Comment({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool idPresent,
    @JsonKey(includeIfNull: false) String? text,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool textPresent,
    @JsonKey(includeIfNull: false) User? author,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool authorPresent,
    @JsonKey(includeIfNull: false) Post? post,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool postPresent,
  }) = _Comment;

  factory Comment.fromJson(Map<String, Object?> json) {
    final data = _CommentJson.fromJson(json);
    return Comment(
      id: data.id,
      idPresent: json.containsKey('id'),
      text: data.text,
      textPresent: json.containsKey('text'),
      author: data.author,
      authorPresent: json.containsKey('author'),
      post: data.post,
      postPresent: json.containsKey('post'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _CommentJson(
      id: id,
      text: text,
      author: author,
      post: post,
    ).toJson();
    if (id == null) {
      if (idPresent) {
        json['id'] = null;
      } else {
        json.remove('id');
      }
    }
    if (text == null) {
      if (textPresent) {
        json['text'] = null;
      } else {
        json.remove('text');
      }
    }
    if (author == null) {
      if (authorPresent) {
        json['author'] = null;
      } else {
        json.remove('author');
      }
    }
    if (post == null) {
      if (postPresent) {
        json['post'] = null;
      } else {
        json.remove('post');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _CommentJson {
  const _CommentJson({
    this.id,
    this.text,
    this.author,
    this.post,
  });

  factory _CommentJson.fromJson(Map<String, Object?> json) =>
      _$CommentJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final int? id;
  @JsonKey(includeIfNull: false)
  final String? text;
  @JsonKey(includeIfNull: false)
  final User? author;
  @JsonKey(includeIfNull: false)
  final Post? post;

  Map<String, Object?> toJson() => _$CommentJsonToJson(this);
}
