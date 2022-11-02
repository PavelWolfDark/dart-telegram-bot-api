import 'dart:convert';
import '../../../models/input_file.dart';
import '../../../models/reply_markup.dart';
import '../../request_parameters.dart';

class RequestParametersSendVideoNote implements RequestParameters {
  // int | String
  final Object chatId;
  // InputFile | String
  final Object videoNote;
  final int? duration;
  final int? length;
  // InputFile | String
  final Object? thumb;
  final bool? disableNotification;
  final bool? protectContent;
  final int? replyToMessageId;
  final bool? allowSendingWithoutReply;
  final ReplyMarkup? replyMarkup;

  @override
  bool get hasInputFiles => videoNote is InputFile || thumb is InputFile;

  RequestParametersSendVideoNote(
      {required this.chatId,
      required this.videoNote,
      this.duration,
      this.length,
      this.thumb,
      this.disableNotification,
      this.protectContent,
      this.replyToMessageId,
      this.allowSendingWithoutReply,
      this.replyMarkup});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['video_note'] = videoNote;
    if (duration != null) {
      json['duration'] = duration;
    }
    if (length != null) {
      json['length'] = length;
    }
    if (thumb != null) {
      json['thumb'] = thumb;
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
    formData['video_note'] = videoNote;
    if (duration != null) {
      formData['duration'] = duration.toString();
    }
    if (length != null) {
      formData['length'] = length.toString();
    }
    if (thumb != null) {
      formData['thumb'] = thumb;
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
