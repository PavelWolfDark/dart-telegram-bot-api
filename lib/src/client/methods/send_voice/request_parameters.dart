import 'dart:convert';
import '../../../models/input_file.dart';
import '../../../models/message_entity.dart';
import '../../../models/reply_markup.dart';
import '../../request_parameters.dart';

class RequestParametersSendVoice implements RequestParameters {
  // int | String
  final Object chatId;
  final int? messageThreadId;
  // InputFile | String
  final Object voice;
  final String? caption;
  // ParseMode
  final String? parseMode;
  final List<MessageEntity>? captionEntities;
  final int? duration;
  final bool? disableNotification;
  final bool? protectContent;
  final int? replyToMessageId;
  final bool? allowSendingWithoutReply;
  final ReplyMarkup? replyMarkup;

  @override
  bool get hasInputFiles => voice is InputFile;

  RequestParametersSendVoice(
      {required this.chatId,
      this.messageThreadId,
      required this.voice,
      this.caption,
      this.parseMode,
      this.captionEntities,
      this.duration,
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
    json['voice'] = voice;
    if (caption != null) {
      json['caption'] = caption;
    }
    if (parseMode != null) {
      json['parse_mode'] = parseMode;
    }
    if (captionEntities != null) {
      List<Map<String, dynamic>> jsonCaptionEntities = [];
      for (final entity in captionEntities!) {
        jsonCaptionEntities.add(entity.toJson());
      }
      json['caption_entities'] = jsonCaptionEntities;
    }
    if (duration != null) {
      json['duration'] = duration;
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
  Map<String, dynamic> toFormData() {
    Map<String, dynamic> formData = {};
    formData['chat_id'] = chatId.toString();
    if (messageThreadId != null) {
      formData['message_thread_id'] = messageThreadId.toString();
    }
    formData['voice'] = voice;
    if (caption != null) {
      formData['caption'] = caption;
    }
    if (parseMode != null) {
      formData['parse_mode'] = parseMode;
    }
    if (captionEntities != null) {
      List<Map<String, dynamic>> jsonCaptionEntities = [];
      for (final entity in captionEntities!) {
        jsonCaptionEntities.add(entity.toJson());
      }
      formData['caption_entities'] = jsonEncode(jsonCaptionEntities);
    }
    if (duration != null) {
      formData['duration'] = duration.toString();
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
