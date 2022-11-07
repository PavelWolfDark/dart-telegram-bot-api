import 'dart:convert';
import '../../../models/inline_keyboard_markup.dart';
import '../../request_parameters.dart';

class RequestParametersSendGame implements RequestParameters {
  @override
  final hasInputFiles = false;
  final int chatId;
  final int? messageThreadId;
  final String gameShortName;
  final bool? disableNotification;
  final bool? protectContent;
  final int? replyToMessageId;
  final bool? allowSendingWithoutReply;
  final InlineKeyboardMarkup? replyMarkup;

  RequestParametersSendGame(
      {required this.chatId,
      this.messageThreadId,
      required this.gameShortName,
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
    json['game_short_name'] = gameShortName;
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
    formData['game_short_name'] = gameShortName;
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
