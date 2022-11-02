import 'dart:convert';
import '../../../models/input_media/animation.dart';
import '../../../models/input_media/audio.dart';
import '../../../models/input_media/document.dart';
import '../../../models/input_media/video.dart';
import '../../../models/input_file.dart';
import '../../../models/input_media.dart';
import '../../../models/inline_keyboard_markup.dart';
import '../../request_parameters.dart';

class RequestParametersEditMessageMedia implements RequestParameters {
  // int | String
  final Object? chatId;
  final int? messageId;
  final String? inlineMessageId;
  final InputMedia media;
  final InlineKeyboardMarkup? replyMarkup;

  @override
  bool get hasInputFiles {
    final inputMedia = media;
    return inputMedia.media is InputFile ||
        (inputMedia is InputMediaAnimation && inputMedia.thumb is InputFile) ||
        (inputMedia is InputMediaAudio && inputMedia.thumb is InputFile) ||
        (inputMedia is InputMediaDocument && inputMedia.thumb is InputFile) ||
        (inputMedia is InputMediaVideo && inputMedia.thumb is InputFile);
  }

  RequestParametersEditMessageMedia(
      {this.chatId,
      this.messageId,
      this.inlineMessageId,
      required this.media,
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
    json['media'] = media.toJson();
    if (replyMarkup != null) {
      json['reply_markup'] = replyMarkup!.toJson();
    }
    return json;
  }

  @override
  Map<String, dynamic> toFormData() {
    Map<String, dynamic> formData = {};
    int attachedFileId = 0;
    if (chatId != null) {
      formData['chat_id'] = chatId.toString();
    }
    if (messageId != null) {
      formData['message_id'] = messageId.toString();
    }
    if (inlineMessageId != null) {
      formData['inline_message_id'] = inlineMessageId;
    }
    final jsonMedia = media.toJson();
    final inputMedia = media;
    final inputMediaMedia = inputMedia.media;
    if (inputMediaMedia is InputFile) {
      final attachedFileName = 'file${++attachedFileId}';
      jsonMedia['media'] = 'attach://$attachedFileName';
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
      jsonMedia['thumb'] = 'attach://$attachedFileName';
      formData[attachedFileName] = inputMediaThumb;
    }
    formData['media'] = jsonEncode(jsonMedia);
    if (replyMarkup != null) {
      formData['reply_markup'] = jsonEncode(replyMarkup!.toJson());
    }
    return formData;
  }
}
