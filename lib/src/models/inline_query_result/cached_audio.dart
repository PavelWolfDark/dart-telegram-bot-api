import '../../constants/inline_query_result_type.dart';
import '../inline_query_result.dart';
import '../message_entity.dart';
import '../inline_keyboard_markup.dart';
import '../input_message_content.dart';

class InlineQueryResultCachedAudio extends InlineQueryResult {
  final String audioFileId;
  final String? caption;
  // ParseMode
  final String? parseMode;
  final List<MessageEntity>? captionEntities;
  final InlineKeyboardMarkup? replyMarkup;
  final InputMessageContent? inputMessageContent;

  InlineQueryResultCachedAudio(
      {required String id,
      required this.audioFileId,
      this.caption,
      this.parseMode,
      this.captionEntities,
      this.replyMarkup,
      this.inputMessageContent})
      : super(type: InlineQueryResultType.audio, id: id);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['audio_file_id'] = audioFileId;
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
    if (replyMarkup != null) {
      json['reply_markup'] = replyMarkup!.toJson();
    }
    if (inputMessageContent != null) {
      json['input_message_content'] = inputMessageContent!.toJson();
    }
    return json;
  }
}
