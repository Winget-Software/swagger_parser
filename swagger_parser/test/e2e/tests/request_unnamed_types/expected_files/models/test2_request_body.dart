// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'example.dart';

part 'test2_request_body.freezed.dart';
part 'test2_request_body.g.dart';

@Freezed(fromJson: false, toJson: false)
class Test2RequestBody with _$Test2RequestBody {
  const Test2RequestBody._();

  const factory Test2RequestBody({
    required List<Example> list1,
    @JsonKey(includeIfNull: true) required String? name,
    @JsonKey(includeIfNull: false) List<Map<String, Example>>? list2,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool list2Present,
    @JsonKey(includeIfNull: false) String? lastname,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool lastnamePresent,
  }) = _Test2RequestBody;

  factory Test2RequestBody.fromJson(Map<String, Object?> json) {
    final data = _Test2RequestBodyJson.fromJson(json);
    return Test2RequestBody(
      list1: data.list1,
      name: data.name,
      list2: data.list2,
      list2Present: json.containsKey('list2'),
      lastname: data.lastname,
      lastnamePresent: json.containsKey('lastname'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _Test2RequestBodyJson(
      list1: list1,
      name: name,
      list2: list2,
      lastname: lastname,
    ).toJson();
    if (list2 == null) {
      if (list2Present) {
        json['list2'] = null;
      } else {
        json.remove('list2');
      }
    }
    if (lastname == null) {
      if (lastnamePresent) {
        json['lastname'] = null;
      } else {
        json.remove('lastname');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _Test2RequestBodyJson {
  const _Test2RequestBodyJson({
    required this.list1,
    required this.name,
    this.list2,
    this.lastname,
  });

  factory _Test2RequestBodyJson.fromJson(Map<String, Object?> json) =>
      _$Test2RequestBodyJsonFromJson(json);

  final List<Example> list1;
  @JsonKey(includeIfNull: true)
  final String? name;
  @JsonKey(includeIfNull: false)
  final List<Map<String, Example>>? list2;
  @JsonKey(includeIfNull: false)
  final String? lastname;

  Map<String, Object?> toJson() => _$Test2RequestBodyJsonToJson(this);
}
