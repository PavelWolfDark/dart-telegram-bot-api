import '../../constants/inline_query_result_type.dart';
import '../inline_query_result.dart';
import '../message_entity.dart';
import '../inline_keyboard_markup.dart';
import '../input_message_content.dart';

class InlineQueryResultDocument extends InlineQueryResult {
  final String title;
  final String documentUrl;
  // InlineQueryResultDocumentMimeType
  final String mimeType;
  final String? description;
  final String? caption;
  // ParseMode
  final String? parseMode;
  final List<MessageEntity>? captionEntities;
  final InlineKeyboardMarkup? replyMarkup;
  final InputMessageContent? inputMessageContent;
  final String? thumbUrl;
  final int? thumbWidth;
  final int? thumbHeight;

  InlineQueryResultDocument(
      {required String id,
      required this.title,
      required this.documentUrl,
      required this.mimeType,
      this.description,
      this.caption,
      this.parseMode,
      this.captionEntities,
      this.replyMarkup,
      this.inputMessageContent,
      this.thumbUrl,
      this.thumbWidth,
      this.thumbHeight})
      : super(type: InlineQueryResultType.document, id: id);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['title'] = title;
    json['document_url'] = documentUrl;
    json['mime_type'] = mimeType;
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
    if (thumbUrl != null) {
      json['thumb_url'] = thumbUrl;
    }
    if (thumbWidth != null) {
      json['thumb_width'] = thumbWidth;
    }
    if (thumbHeight != null) {
      json['thumb_height'] = thumbHeight;
    }
    return json;
  }
}
