// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_parcel_pending_webhook_buildings_building_id_response.freezed.dart';
part 'get_parcel_pending_webhook_buildings_building_id_response.g.dart';

@Freezed(fromJson: false, toJson: false)
class GetParcelPendingWebhookBuildingsBuildingIdResponse
    with _$GetParcelPendingWebhookBuildingsBuildingIdResponse {
  const GetParcelPendingWebhookBuildingsBuildingIdResponse._();

  const factory GetParcelPendingWebhookBuildingsBuildingIdResponse({
    @JsonKey(includeIfNull: false, name: 'webhookURL') String? webhookUrl,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool webhookUrlPresent,
  }) = _GetParcelPendingWebhookBuildingsBuildingIdResponse;

  factory GetParcelPendingWebhookBuildingsBuildingIdResponse.fromJson(
      Map<String, Object?> json) {
    final data =
        _GetParcelPendingWebhookBuildingsBuildingIdResponseJson.fromJson(json);
    return GetParcelPendingWebhookBuildingsBuildingIdResponse(
      webhookUrl: data.webhookUrl,
      webhookUrlPresent: json.containsKey('webhookURL'),
    );
  }

  Map<String, Object?> toJson() {
    final json = _GetParcelPendingWebhookBuildingsBuildingIdResponseJson(
      webhookUrl: webhookUrl,
    ).toJson();
    if (webhookUrl == null) {
      if (webhookUrlPresent) {
        json['webhookURL'] = null;
      } else {
        json.remove('webhookURL');
      }
    }
    return json;
  }
}

@JsonSerializable()
class _GetParcelPendingWebhookBuildingsBuildingIdResponseJson {
  const _GetParcelPendingWebhookBuildingsBuildingIdResponseJson({
    this.webhookUrl,
  });

  factory _GetParcelPendingWebhookBuildingsBuildingIdResponseJson.fromJson(
          Map<String, Object?> json) =>
      _$GetParcelPendingWebhookBuildingsBuildingIdResponseJsonFromJson(json);

  @JsonKey(includeIfNull: false, name: 'webhookURL')
  final String? webhookUrl;

  Map<String, Object?> toJson() =>
      _$GetParcelPendingWebhookBuildingsBuildingIdResponseJsonToJson(this);
}
