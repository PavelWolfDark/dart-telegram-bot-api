import 'dart:convert';
import '../../../models/input_file.dart';
import '../../../models/message_entity.dart';
import '../../../models/reply_markup.dart';
import '../../request_parameters.dart';

class RequestParametersSendVideo implements RequestParameters {
  // int | String
  final Object chatId;
  // InputFile | String
  final Object video;
  final int? duration;
  final int? width;
  final int? height;
  // InputFile | String
  final Object? thumb;
  final String? caption;
  // ParseMode
  final String? parseMode;
  final List<MessageEntity>? captionEntities;
  final bool? supportsStreaming;
  final bool? disableNotification;
  final bool? protectContent;
  final int? replyToMessageId;
  final bool? allowSendingWithoutReply;
  final ReplyMarkup? replyMarkup;

  @override
  bool get hasInputFiles => video is InputFile || thumb is InputFile;

  RequestParametersSendVideo(
      {required this.chatId,
      required this.video,
      this.duration,
      this.width,
      this.height,
      this.thumb,
      this.caption,
      this.parseMode,
      this.captionEntities,
      this.supportsStreaming,
      this.disableNotification,
      this.protectContent,
      this.replyToMessageId,
      this.allowSendingWithoutReply,
      this.replyMarkup});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['video'] = video;
    if (duration != null) {
      json['duration'] = duration;
    }
    if (width != null) {
      json['width'] = width;
    }
    if (height != null) {
      json['height'] = height;
    }
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
    if (supportsStreaming != null) {
      json['supports_streaming'] = supportsStreaming;
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
    formData['video'] = video;
    if (duration != null) {
      formData['duration'] = duration.toString();
    }
    if (width != null) {
      formData['width'] = width.toString();
    }
    if (height != null) {
      formData['height'] = height.toString();
    }
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
    if (supportsStreaming != null) {
      formData['supports_streaming'] = supportsStreaming.toString();
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
