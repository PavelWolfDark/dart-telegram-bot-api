import 'dart:convert';
import '../../../models/inline_keyboard_markup.dart';
import '../../request_parameters.dart';

class RequestParametersEditMessageLiveLocation implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object? chatId;
  final int? messageId;
  final String? inlineMessageId;
  final double latitude;
  final double longitude;
  final double? horizontalAccuracy;
  final int? heading;
  final int? proximityAlertRadius;
  final InlineKeyboardMarkup? replyMarkup;

  RequestParametersEditMessageLiveLocation(
      {this.chatId,
      this.messageId,
      this.inlineMessageId,
      required this.latitude,
      required this.longitude,
      this.horizontalAccuracy,
      this.heading,
      this.proximityAlertRadius,
      this.replyMarkup});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (chatId != null) {
      json['chat_id'] = chatId;
    }
    if (messageId != null) {
      json['message_id'] = messageId;
    }
    if (inlineMessageId != null) {
      json['inline_message_id'] = inlineMessageId;
    }
    json['latitude'] = latitude;
    json['longitude'] = longitude;
    if (horizontalAccuracy != null) {
      json['horizontal_accuracy'] = horizontalAccuracy;
    }
    if (heading != null) {
      json['heading'] = heading;
    }
    if (proximityAlertRadius != null) {
      json['proximity_alert_radius'] = proximityAlertRadius;
    }
    if (replyMarkup != null) {
      json['reply_markup'] = replyMarkup!.toJson();
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    if (chatId != null) {
      formData['chat_id'] = chatId.toString();
    }
    if (messageId != null) {
      formData['message_id'] = messageId.toString();
    }
    if (inlineMessageId != null) {
      formData['inline_message_id'] = inlineMessageId!;
    }
    formData['latitude'] = latitude.toString();
    formData['longitude'] = longitude.toString();
    if (horizontalAccuracy != null) {
      formData['horizontal_accuracy'] = horizontalAccuracy.toString();
    }
    if (heading != null) {
      formData['heading'] = heading.toString();
    }
    if (proximityAlertRadius != null) {
      formData['proximity_alert_radius'] = proximityAlertRadius.toString();
    }
    if (replyMarkup != null) {
      formData['reply_markup'] = jsonEncode(replyMarkup!.toJson());
    }
    return formData;
  }
}
