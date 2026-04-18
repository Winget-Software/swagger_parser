// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'test1_request_body.freezed.dart';
part 'test1_request_body.g.dart';

@Freezed(fromJson: false, toJson: false)
class Test1RequestBody with _$Test1RequestBody {
  const Test1RequestBody._();

  const factory Test1RequestBody({
    required List<dynamic> list,
    @JsonKey(includeIfNull: true) required String? name,
    @JsonKey(includeIfNull: false) String? lastname,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool lastnamePresent,
  }) = _Test1RequestBody;

  factory Test1RequestBody.fromJson(Map<String, Object?> json) {
    final data = _Test1RequestBodyJson.fromJson(json);
    return Test1RequestBody(
      list: data.list,
      name: data.name,
      lastname: data.lastname,
      lastnamePresent: json.containsKey('lastname'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _Test1RequestBodyJson(
      list: list,
      name: name,
      lastname: lastname,
    ).toJson();
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
class _Test1RequestBodyJson {
  const _Test1RequestBodyJson({
    required this.list,
    required this.name,
    this.lastname,
  });

  factory _Test1RequestBodyJson.fromJson(Map<String, Object?> json) =>
      _$Test1RequestBodyJsonFromJson(json);

  final List<dynamic> list;
  @JsonKey(includeIfNull: true)
  final String? name;
  @JsonKey(includeIfNull: false)
  final String? lastname;

  Map<String, Object?> toJson() => _$Test1RequestBodyJsonToJson(this);
}
