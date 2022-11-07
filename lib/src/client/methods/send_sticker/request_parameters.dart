import 'dart:convert';
import '../../../models/input_file.dart';
import '../../../models/reply_markup.dart';
import '../../request_parameters.dart';

class RequestParametersSendSticker implements RequestParameters {
  // int | String
  final Object chatId;
  final int? messageThreadId;
  // InputFile | String
  final Object sticker;
  final bool? disableNotification;
  final bool? protectContent;
  final int? replyToMessageId;
  final bool? allowSendingWithoutReply;
  final ReplyMarkup? replyMarkup;

  @override
  bool get hasInputFiles => sticker is InputFile;

  RequestParametersSendSticker(
      {required this.chatId,
      this.messageThreadId,
      required this.sticker,
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
    json['sticker'] = sticker;
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
  Map<String, dynamic> toFormData() {
    Map<String, dynamic> formData = {};
    formData['chat_id'] = chatId.toString();
    if (messageThreadId != null) {
      formData['message_thread_id'] = messageThreadId.toString();
    }
    formData['sticker'] = sticker;
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
