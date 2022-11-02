import 'dart:convert';
import '../../../models/message_entity.dart';
import '../../../models/reply_markup.dart';
import '../../request_parameters.dart';

class RequestParametersSendMessage implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final String text;
  // ParseMode
  final String? parseMode;
  final List<MessageEntity>? entities;
  final bool? disableWebPagePreview;
  final bool? disableNotification;
  final bool? protectContent;
  final int? replyToMessageId;
  final bool? allowSendingWithoutReply;
  final ReplyMarkup? replyMarkup;

  RequestParametersSendMessage(
      {required this.chatId,
      required this.text,
      this.parseMode,
      this.entities,
      this.disableWebPagePreview,
      this.disableNotification,
      this.protectContent,
      this.replyToMessageId,
      this.allowSendingWithoutReply,
      this.replyMarkup});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['text'] = text;
    if (parseMode != null) {
      json['parse_mode'] = parseMode;
    }
    if (entities != null) {
      List<Map<String, dynamic>> jsonEntities = [];
      for (final entity in entities!) {
        jsonEntities.add(entity.toJson());
      }
      json['entities'] = jsonEntities;
    }
    if (disableWebPagePreview != null) {
      json['disable_web_page_preview'] = disableWebPagePreview;
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
    formData['text'] = text;
    if (parseMode != null) {
      formData['parse_mode'] = parseMode!;
    }
    if (entities != null) {
      List<Map<String, dynamic>> jsonEntities = [];
      for (final entity in entities!) {
        jsonEntities.add(entity.toJson());
      }
      formData['entities'] = jsonEncode(jsonEntities);
    }
    if (disableWebPagePreview != null) {
      formData['disable_web_page_preview'] = disableWebPagePreview.toString();
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
