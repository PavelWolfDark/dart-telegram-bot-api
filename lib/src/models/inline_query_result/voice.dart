import '../../constants/inline_query_result_type.dart';
import '../inline_query_result.dart';
import '../message_entity.dart';
import '../inline_keyboard_markup.dart';
import '../input_message_content.dart';

class InlineQueryResultVoice extends InlineQueryResult {
  final String voiceUrl;
  final String title;
  final String? caption;
  // ParseMode
  final String? parseMode;
  final List<MessageEntity>? captionEntities;
  final int? voiceDuration;
  final InlineKeyboardMarkup? replyMarkup;
  final InputMessageContent? inputMessageContent;

  InlineQueryResultVoice(
      {required String id,
      required this.voiceUrl,
      required this.title,
      this.caption,
      this.parseMode,
      this.captionEntities,
      this.voiceDuration,
      this.replyMarkup,
      this.inputMessageContent})
      : super(type: InlineQueryResultType.voice, id: id);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['voice_url'] = voiceUrl;
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
    if (voiceDuration != null) {
      json['voice_duration'] = voiceDuration;
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
