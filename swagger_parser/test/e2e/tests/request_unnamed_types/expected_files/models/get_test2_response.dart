// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_test2_response.freezed.dart';
part 'get_test2_response.g.dart';

@Freezed(fromJson: false, toJson: false)
class GetTest2Response with _$GetTest2Response {
  const GetTest2Response._();

  const factory GetTest2Response({
    required List<String> list,
    @JsonKey(includeIfNull: true) required String? name,
    @JsonKey(includeIfNull: false) String? lastname,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool lastnamePresent,
  }) = _GetTest2Response;

  factory GetTest2Response.fromJson(Map<String, Object?> json) {
    final data = _GetTest2ResponseJson.fromJson(json);
    return GetTest2Response(
      list: data.list,
      name: data.name,
      lastname: data.lastname,
      lastnamePresent: json.containsKey('lastname'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _GetTest2ResponseJson(
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
class _GetTest2ResponseJson {
  const _GetTest2ResponseJson({
    required this.list,
    required this.name,
    this.lastname,
  });

  factory _GetTest2ResponseJson.fromJson(Map<String, Object?> json) =>
      _$GetTest2ResponseJsonFromJson(json);

  final List<String> list;
  @JsonKey(includeIfNull: true)
  final String? name;
  @JsonKey(includeIfNull: false)
  final String? lastname;

  Map<String, Object?> toJson() => _$GetTest2ResponseJsonToJson(this);
}
