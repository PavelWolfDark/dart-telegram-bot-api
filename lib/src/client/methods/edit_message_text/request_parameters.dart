import 'dart:convert';
import '../../../models/message_entity.dart';
import '../../../models/inline_keyboard_markup.dart';
import '../../request_parameters.dart';

class RequestParametersEditMessageText implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object? chatId;
  final int? messageId;
  final String? inlineMessageId;
  final String text;
  // ParseMode
  final String? parseMode;
  final List<MessageEntity>? entities;
  final bool? disableWebPagePreview;
  final InlineKeyboardMarkup? replyMarkup;

  RequestParametersEditMessageText(
      {this.chatId,
      this.messageId,
      this.inlineMessageId,
      required this.text,
      this.parseMode,
      this.entities,
      this.disableWebPagePreview,
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
    if (replyMarkup != null) {
      formData['reply_markup'] = jsonEncode(replyMarkup!.toJson());
    }
    return formData;
  }
}
