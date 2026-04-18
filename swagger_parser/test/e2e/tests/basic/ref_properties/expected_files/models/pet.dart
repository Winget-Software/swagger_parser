// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'api_nullable_date_time.dart';
import 'api_schedule.dart';

part 'pet.freezed.dart';
part 'pet.g.dart';

@Freezed(fromJson: false, toJson: false)
abstract class Pet with _$Pet {
  const Pet._();

  const factory Pet({
    /// value in UTC, formatted in ISO String
    @JsonKey(includeIfNull: true) required DateTime? nullableDateTime,
    @JsonKey(includeIfNull: true)
    @Deprecated('This is marked as deprecated')
    required ApiNullableDateTime? nullableDateTimeRef,
    @JsonKey(includeIfNull: false) ApiSchedule? schedule,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool schedulePresent,
  }) = _Pet;

  factory Pet.fromJson(Map<String, Object?> json) {
    final data = _PetJson.fromJson(json);
    return Pet(
      nullableDateTime: data.nullableDateTime,
      nullableDateTimeRef: data.nullableDateTimeRef,
      schedule: data.schedule,
      schedulePresent: json.containsKey('schedule'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _PetJson(
      nullableDateTime: nullableDateTime,
      nullableDateTimeRef: nullableDateTimeRef,
      schedule: schedule,
    ).toJson();
    if (schedule == null) {
      if (schedulePresent) {
        json['schedule'] = null;
      } else {
        json.remove('schedule');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _PetJson {
  const _PetJson({
    required this.nullableDateTime,
    required this.nullableDateTimeRef,
    this.schedule,
  });

  factory _PetJson.fromJson(Map<String, Object?> json) =>
      _$PetJsonFromJson(json);

  /// value in UTC, formatted in ISO String
  @JsonKey(includeIfNull: true)
  final DateTime? nullableDateTime;
  @JsonKey(includeIfNull: true)
  @Deprecated('This is marked as deprecated')
  final ApiNullableDateTime? nullableDateTimeRef;
  @JsonKey(includeIfNull: false)
  final ApiSchedule? schedule;

  Map<String, Object?> toJson() => _$PetJsonToJson(this);
}
