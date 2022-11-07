import 'dart:convert';
import '../../../models/reply_markup.dart';
import '../../request_parameters.dart';

class RequestParametersSendVenue implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final int? messageThreadId;
  final double latitude;
  final double longitude;
  final String title;
  final String address;
  final String? foursquareId;
  final String? foursquareType;
  final String? googlePlaceId;
  final String? googlePlaceType;
  final bool? disableNotification;
  final bool? protectContent;
  final int? replyToMessageId;
  final bool? allowSendingWithoutReply;
  final ReplyMarkup? replyMarkup;

  RequestParametersSendVenue(
      {required this.chatId,
      this.messageThreadId,
      required this.latitude,
      required this.longitude,
      required this.title,
      required this.address,
      this.foursquareId,
      this.foursquareType,
      this.googlePlaceId,
      this.googlePlaceType,
      this.disableNotification,
      this.protectContent,
      this.replyToMessageId,
      this.allowSendingWithoutReply,
      this.replyMarkup});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    if (messageThreadId != null) {
      json['message_thread_id'] = messageThreadId;
    }
    json['latitude'] = latitude;
    json['longitude'] = longitude;
    json['title'] = title;
    json['address'] = address;
    if (foursquareId != null) {
      json['foursquare_id'] = foursquareId;
    }
    if (foursquareType != null) {
      json['foursquare_type'] = foursquareType;
    }
    if (googlePlaceId != null) {
      json['google_place_id'] = googlePlaceId;
    }
    if (googlePlaceType != null) {
      json['google_place_type'] = googlePlaceType;
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
    if (messageThreadId != null) {
      formData['message_thread_id'] = messageThreadId.toString();
    }
    formData['latitude'] = latitude.toString();
    formData['longitude'] = longitude.toString();
    formData['title'] = title;
    formData['address'] = address;
    if (foursquareId != null) {
      formData['foursquare_id'] = foursquareId!;
    }
    if (foursquareType != null) {
      formData['foursquare_type'] = foursquareType!;
    }
    if (googlePlaceId != null) {
      formData['google_place_id'] = googlePlaceId!;
    }
    if (googlePlaceType != null) {
      formData['google_place_type'] = googlePlaceType!;
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
