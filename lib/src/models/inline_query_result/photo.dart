import '../../constants/inline_query_result_type.dart';
import '../inline_query_result.dart';
import '../message_entity.dart';
import '../inline_keyboard_markup.dart';
import '../input_message_content.dart';

class InlineQueryResultPhoto extends InlineQueryResult {
  final String photoUrl;
  final String thumbUrl;
  final int? photoWidth;
  final int? photoHeight;
  final String? title;
  final String? description;
  final String? caption;
  // ParseMode
  final String? parseMode;
  final List<MessageEntity>? captionEntities;
  final InlineKeyboardMarkup? replyMarkup;
  final InputMessageContent? inputMessageContent;

  InlineQueryResultPhoto(
      {required String id,
      required this.photoUrl,
      required this.thumbUrl,
      this.photoWidth,
      this.photoHeight,
      this.title,
      this.description,
      this.caption,
      this.parseMode,
      this.captionEntities,
      this.replyMarkup,
      this.inputMessageContent})
      : super(type: InlineQueryResultType.photo, id: id);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['photo_url'] = photoUrl;
    json['thumb_url'] = thumbUrl;
    if (photoWidth != null) {
      json['photo_width'] = photoWidth;
    }
    if (photoHeight != null) {
      json['photo_height'] = photoHeight;
    }
    if (title != null) {
      json['title'] = title;
    }
    if (description != null) {
      json['description'] = description;
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
