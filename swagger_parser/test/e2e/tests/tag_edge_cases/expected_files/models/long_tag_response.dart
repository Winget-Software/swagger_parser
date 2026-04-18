// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'long_tag_response.freezed.dart';
part 'long_tag_response.g.dart';

@Freezed(fromJson: false, toJson: false)
class LongTagResponse with _$LongTagResponse {
  const LongTagResponse._();

  const factory LongTagResponse({
    @JsonKey(includeIfNull: false) String? data,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool dataPresent,
    @JsonKey(includeIfNull: false) DateTime? timestamp,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool timestampPresent,
  }) = _LongTagResponse;

  factory LongTagResponse.fromJson(Map<String, Object?> json) {
    final data = _LongTagResponseJson.fromJson(json);
    return LongTagResponse(
      data: data.data,
      dataPresent: json.containsKey('data'),
      timestamp: data.timestamp,
      timestampPresent: json.containsKey('timestamp'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _LongTagResponseJson(
      data: data,
      timestamp: timestamp,
    ).toJson();
    if (data == null) {
      if (dataPresent) {
        json['data'] = null;
      } else {
        json.remove('data');
      }
    }
    if (timestamp == null) {
      if (timestampPresent) {
        json['timestamp'] = null;
      } else {
        json.remove('timestamp');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _LongTagResponseJson {
  const _LongTagResponseJson({
    this.data,
    this.timestamp,
  });

  factory _LongTagResponseJson.fromJson(Map<String, Object?> json) =>
      _$LongTagResponseJsonFromJson(json);

  @JsonKey(includeIfNull: false)
  final String? data;
  @JsonKey(includeIfNull: false)
  final DateTime? timestamp;

  Map<String, Object?> toJson() => _$LongTagResponseJsonToJson(this);
}
