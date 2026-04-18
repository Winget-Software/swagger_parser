// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_parcel_pending_building_settings.freezed.dart';
part 'api_parcel_pending_building_settings.g.dart';

@Freezed(fromJson: false, toJson: false)
class ApiParcelPendingBuildingSettings with _$ApiParcelPendingBuildingSettings {
  const ApiParcelPendingBuildingSettings._();

  const factory ApiParcelPendingBuildingSettings({
    required bool isDellaManaged,
    @JsonKey(includeIfNull: false) String? externalPropertyId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool externalPropertyIdPresent,
    @JsonKey(includeIfNull: false) String? externalBuildingName,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool externalBuildingNamePresent,
  }) = _ApiParcelPendingBuildingSettings;

  factory ApiParcelPendingBuildingSettings.fromJson(Map<String, Object?> json) {
    final data = _ApiParcelPendingBuildingSettingsJson.fromJson(json);
    return ApiParcelPendingBuildingSettings(
      isDellaManaged: data.isDellaManaged,
      externalPropertyId: data.externalPropertyId,
      externalPropertyIdPresent: json.containsKey('externalPropertyId'),
      externalBuildingName: data.externalBuildingName,
      externalBuildingNamePresent: json.containsKey('externalBuildingName'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _ApiParcelPendingBuildingSettingsJson(
      isDellaManaged: isDellaManaged,
      externalPropertyId: externalPropertyId,
      externalBuildingName: externalBuildingName,
    ).toJson();
    if (externalPropertyId == null) {
      if (externalPropertyIdPresent) {
        json['externalPropertyId'] = null;
      } else {
        json.remove('externalPropertyId');
      }
    }
    if (externalBuildingName == null) {
      if (externalBuildingNamePresent) {
        json['externalBuildingName'] = null;
      } else {
        json.remove('externalBuildingName');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _ApiParcelPendingBuildingSettingsJson {
  const _ApiParcelPendingBuildingSettingsJson({
    required this.isDellaManaged,
    this.externalPropertyId,
    this.externalBuildingName,
  });

  factory _ApiParcelPendingBuildingSettingsJson.fromJson(
          Map<String, Object?> json) =>
      _$ApiParcelPendingBuildingSettingsJsonFromJson(json);

  final bool isDellaManaged;
  @JsonKey(includeIfNull: false)
  final String? externalPropertyId;
  @JsonKey(includeIfNull: false)
  final String? externalBuildingName;

  Map<String, Object?> toJson() =>
      _$ApiParcelPendingBuildingSettingsJsonToJson(this);
}
