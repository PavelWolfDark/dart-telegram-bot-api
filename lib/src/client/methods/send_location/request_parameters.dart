import 'dart:convert';
import '../../../models/reply_markup.dart';
import '../../request_parameters.dart';

class RequestParametersSendLocation implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final double latitude;
  final double longitude;
  final double? horizontalAccuracy;
  final int? livePeriod;
  final int? heading;
  final int? proximityAlertRadius;
  final bool? disableNotification;
  final bool? protectContent;
  final int? replyToMessageId;
  final bool? allowSendingWithoutReply;
  final ReplyMarkup? replyMarkup;

  RequestParametersSendLocation(
      {required this.chatId,
      required this.latitude,
      required this.longitude,
      this.horizontalAccuracy,
      this.livePeriod,
      this.heading,
      this.proximityAlertRadius,
      this.disableNotification,
      this.protectContent,
      this.replyToMessageId,
      this.allowSendingWithoutReply,
      this.replyMarkup});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['latitude'] = latitude;
    json['longitude'] = longitude;
    if (horizontalAccuracy != null) {
      json['horizontal_accuracy'] = horizontalAccuracy;
    }
    if (livePeriod != null) {
      json['live_period'] = livePeriod;
    }
    if (heading != null) {
      json['heading'] = heading;
    }
    if (proximityAlertRadius != null) {
      json['proximity_alert_radius'] = proximityAlertRadius;
    }
    if (disableNotification != null) {
      json['disable_notification'] = disableNotification;
    }
    if (protectContent != null) {
      json['protect_content'] = protectContent;
    }
    if (replyToMessageId != null) {
      json['reply_to_message_id'] = replyToMessageId;
    }
    if (allowSendingWithoutReply != null) {
      json['allow_sending_without_reply'] = allowSendingWithoutReply;
    }
    if (replyMarkup != null) {
      json['reply_markup'] = replyMarkup!.toJson();
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    formData['latitude'] = latitude.toString();
    formData['longitude'] = longitude.toString();
    if (horizontalAccuracy != null) {
      formData['horizontal_accuracy'] = horizontalAccuracy.toString();
    }
    if (livePeriod != null) {
      formData['live_period'] = livePeriod.toString();
    }
    if (heading != null) {
      formData['heading'] = heading.toString();
    }
    if (proximityAlertRadius != null) {
      formData['proximity_alert_radius'] = proximityAlertRadius.toString();
    }
    if (disableNotification != null) {
      formData['disable_notification'] = disableNotification.toString();
    }
    if (protectContent != null) {
      formData['protect_content'] = protectContent.toString();
    }
    if (replyToMessageId != null) {
      formData['reply_to_message_id'] = replyToMessageId.toString();
    }
    if (allowSendingWithoutReply != null) {
      formData['allow_sending_without_reply'] =
          allowSendingWithoutReply.toString();
    }
    if (replyMarkup != null) {
      formData['reply_markup'] = jsonEncode(replyMarkup!.toJson());
    }
    return formData;
  }
}
