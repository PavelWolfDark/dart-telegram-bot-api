import 'dart:convert';
import '../../../models/input_file.dart';
import '../../../models/message_entity.dart';
import '../../../models/reply_markup.dart';
import '../../request_parameters.dart';

class RequestParametersSendDocument implements RequestParameters {
  // int | String
  final Object chatId;
  final int? messageThreadId;
  // InputFile | String
  final Object document;
  // InputFile | String
  final Object? thumb;
  final String? caption;
  // ParseMode
  final String? parseMode;
  final List<MessageEntity>? captionEntities;
  final bool? disableContentTypeDetection;
  final bool? disableNotification;
  final bool? protectContent;
  final int? replyToMessageId;
  final bool? allowSendingWithoutReply;
  final ReplyMarkup? replyMarkup;

  @override
  bool get hasInputFiles => document is InputFile || thumb is InputFile;

  RequestParametersSendDocument(
      {required this.chatId,
      this.messageThreadId,
      required this.document,
      this.thumb,
      this.caption,
      this.parseMode,
      this.captionEntities,
      this.disableContentTypeDetection,
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
    json['document'] = document;
    if (thumb != null) {
      json['thumb'] = thumb;
    }
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
    if (disableContentTypeDetection != null) {
      json['disable_content_type_detection'] = disableContentTypeDetection;
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
    formData['document'] = document;
    if (thumb != null) {
      formData['thumb'] = thumb;
    }
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
    if (disableContentTypeDetection != null) {
      formData['disable_content_type_detection'] =
          disableContentTypeDetection.toString();
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
