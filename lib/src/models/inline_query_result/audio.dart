import '../../constants/inline_query_result_type.dart';
import '../inline_query_result.dart';
import '../message_entity.dart';
import '../inline_keyboard_markup.dart';
import '../input_message_content.dart';

class InlineQueryResultAudio extends InlineQueryResult {
  final String audioUrl;
  final String title;
  final String? caption;
  // ParseMode
  final String? parseMode;
  final List<MessageEntity>? captionEntities;
  final String? performer;
  final int? audioDuration;
  final InlineKeyboardMarkup? replyMarkup;
  final InputMessageContent? inputMessageContent;

  InlineQueryResultAudio(
      {required String id,
      required this.audioUrl,
      required this.title,
      this.caption,
      this.parseMode,
      this.captionEntities,
      this.performer,
      this.audioDuration,
      this.replyMarkup,
      this.inputMessageContent})
      : super(type: InlineQueryResultType.audio, id: id);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['audio_url'] = audioUrl;
    json['title'] = title;
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
    if (performer != null) {
      json['performer'] = performer;
    }
    if (audioDuration != null) {
      json['audio_duration'] = audioDuration;
    }
    if (replyMarkup != null) {
      json['reply_markup'] = replyMarkup!.toJson();
    }
    if (inputMessageContent != null) {
      json['input_message_content'] = inputMessageContent!.toJson();
    }
    return json;
  }
}
