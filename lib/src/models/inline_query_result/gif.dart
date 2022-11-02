import '../../constants/inline_query_result_type.dart';
import '../inline_query_result.dart';
import '../message_entity.dart';
import '../inline_keyboard_markup.dart';
import '../input_message_content.dart';

class InlineQueryResultGif extends InlineQueryResult {
  final String gifUrl;
  final int? gifWidth;
  final int? gifHeight;
  final int? gifDuration;
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

  InlineQueryResultGif(
      {required String id,
      required this.gifUrl,
      this.gifWidth,
      this.gifHeight,
      this.gifDuration,
      required this.thumbUrl,
      this.thumbMimeType,
      this.title,
      this.caption,
      this.parseMode,
      this.captionEntities,
      this.replyMarkup,
      this.inputMessageContent})
      : super(type: InlineQueryResultType.gif, id: id);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['gif_url'] = gifUrl;
    if (gifWidth != null) {
      json['gif_width'] = gifWidth;
    }
    if (gifHeight != null) {
      json['gif_height'] = gifHeight;
    }
    if (gifDuration != null) {
      json['gif_duration'] = gifDuration;
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
