import '../../constants/inline_query_result_type.dart';
import '../inline_query_result.dart';
import '../message_entity.dart';
import '../inline_keyboard_markup.dart';
import '../input_message_content.dart';

class InlineQueryResultCachedPhoto extends InlineQueryResult {
  final String photoFileId;
  final String? title;
  final String? description;
  final String? caption;
  // ParseMode
  final String? parseMode;
  final List<MessageEntity>? captionEntities;
  final InlineKeyboardMarkup? replyMarkup;
  final InputMessageContent? inputMessageContent;

  InlineQueryResultCachedPhoto(
      {required String id,
      required this.photoFileId,
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
    json['photo_file_id'] = photoFileId;
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
