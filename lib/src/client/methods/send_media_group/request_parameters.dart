import 'dart:convert';
import '../../../models/input_media/animation.dart';
import '../../../models/input_media/audio.dart';
import '../../../models/input_media/document.dart';
import '../../../models/input_media/video.dart';
import '../../../models/input_file.dart';
import '../../../models/input_media.dart';
import '../../request_parameters.dart';

class RequestParametersSendMediaGroup implements RequestParameters {
  // int | String
  final Object chatId;
  final int? messageThreadId;
  final List<InputMedia> media;
  final bool? disableNotification;
  final bool? protectContent;
  final int? replyToMessageId;
  final bool? allowSendingWithoutReply;

  @override
  bool get hasInputFiles {
    for (final inputMedia in media) {
      if (inputMedia.media is InputFile ||
          (inputMedia is InputMediaAnimation &&
              inputMedia.thumb is InputFile) ||
          (inputMedia is InputMediaAudio && inputMedia.thumb is InputFile) ||
          (inputMedia is InputMediaDocument && inputMedia.thumb is InputFile) ||
          (inputMedia is InputMediaVideo && inputMedia.thumb is InputFile)) {
        return true;
      }
    }
    return false;
  }

  RequestParametersSendMediaGroup(
      {required this.chatId,
      this.messageThreadId,
      required this.media,
      this.disableNotification,
      this.protectContent,
      this.replyToMessageId,
      this.allowSendingWithoutReply});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    if (messageThreadId != null) {
      json['message_thread_id'] = messageThreadId;
    }
    List<Map<String, dynamic>> jsonMedia = [];
    for (final inputMedia in media) {
      jsonMedia.add(inputMedia.toJson());
    }
    json['media'] = jsonMedia;
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
    return json;
  }

  @override
  Map<String, dynamic> toFormData() {
    Map<String, dynamic> formData = {};
    int attachedFileId = 0;
    formData['chat_id'] = chatId.toString();
    if (messageThreadId != null) {
      formData['message_thread_id'] = messageThreadId.toString();
    }
    List<Map<String, dynamic>> jsonMedia = [];
    for (final inputMedia in media) {
      final jsonInputMedia = inputMedia.toJson();
      final inputMediaMedia = inputMedia.media;
      if (inputMediaMedia is InputFile) {
        final attachedFileName = 'file${++attachedFileId}';
        jsonInputMedia['media'] = 'attach://$attachedFileName';
        formData[attachedFileName] = inputMediaMedia;
      }
      final inputMediaThumb = inputMedia is InputMediaAnimation
          ? inputMedia.thumb
          : inputMedia is InputMediaAudio
              ? inputMedia.thumb
              : inputMedia is InputMediaDocument
                  ? inputMedia.thumb
                  : inputMedia is InputMediaVideo
                      ? inputMedia.thumb
                      : null;
      if (inputMediaThumb is InputFile) {
        final attachedFileName = 'file${++attachedFileId}';
        jsonInputMedia['thumb'] = 'attach://$attachedFileName';
        formData[attachedFileName] = inputMediaThumb;
      }
      jsonMedia.add(jsonInputMedia);
    }
    formData['media'] = jsonEncode(jsonMedia);
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
    return formData;
  }
}
