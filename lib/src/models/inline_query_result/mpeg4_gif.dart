import '../../constants/inline_query_result_type.dart';
import '../inline_query_result.dart';
import '../message_entity.dart';
import '../inline_keyboard_markup.dart';
import '../input_message_content.dart';

class InlineQueryResultMpeg4Gif extends InlineQueryResult {
  final String mpeg4Url;
  final int? mpeg4Width;
  final int? mpeg4Height;
  final int? mpeg4Duration;
  final String thumbUrl;
  // InlineQueryResultGifThumbMimeType
  final String? thumbMimeType;
  final String? title;
  final String? caption;
  // ParseMode
  final String? parseMode;
  final List<MessageEntity>? captionEntities;
  final InlineKeyboardMarkup? replyMarkup;
  final InputMessageContent? inputMessageContent;

  InlineQueryResultMpeg4Gif(
      {required String id,
      required this.mpeg4Url,
      this.mpeg4Width,
      this.mpeg4Height,
      this.mpeg4Duration,
      required this.thumbUrl,
      this.thumbMimeType,
      this.title,
      this.caption,
      this.parseMode,
      this.captionEntities,
      this.replyMarkup,
      this.inputMessageContent})
      : super(type: InlineQueryResultType.mpeg4Gif, id: id);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['mpeg4_url'] = mpeg4Url;
    if (mpeg4Width != null) {
      json['mpeg4_width'] = mpeg4Width;
    }
    if (mpeg4Height != null) {
      json['mpeg4_height'] = mpeg4Height;
    }
    if (mpeg4Duration != null) {
      json['mpeg4_duration'] = mpeg4Duration;
    }
    json['thumb_url'] = thumbUrl;
    if (thumbMimeType != null) {
      json['thumb_mime_type'] = thumbMimeType;
    }
    if (title != null) {
      json['title'] = title;
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
    if (replyMarkup != null) {
      json['reply_markup'] = replyMarkup!.toJson();
    }
    if (inputMessageContent != null) {
      json['input_message_content'] = inputMessageContent!.toJson();
    }
    return json;
  }
}
