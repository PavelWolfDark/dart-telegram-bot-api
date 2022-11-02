import '../../constants/inline_query_result_type.dart';
import '../inline_query_result.dart';
import '../message_entity.dart';
import '../inline_keyboard_markup.dart';
import '../input_message_content.dart';

class InlineQueryResultVideo extends InlineQueryResult {
  final String videoUrl;
  // InlineQueryResultVideoMimeType
  final String mimeType;
  final String thumbUrl;
  final String title;
  final String? caption;
  // ParseMode
  final String? parseMode;
  final List<MessageEntity>? captionEntities;
  final int? videoWidth;
  final int? videoHeight;
  final int? videoDuration;
  final String? description;
  final InlineKeyboardMarkup? replyMarkup;
  final InputMessageContent? inputMessageContent;

  InlineQueryResultVideo(
      {required String id,
      required this.videoUrl,
      required this.mimeType,
      required this.thumbUrl,
      required this.title,
      this.caption,
      this.parseMode,
      this.captionEntities,
      this.videoWidth,
      this.videoHeight,
      this.videoDuration,
      this.description,
      this.replyMarkup,
      this.inputMessageContent})
      : super(type: InlineQueryResultType.video, id: id);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['video_url'] = videoUrl;
    json['mime_type'] = mimeType;
    json['thumb_url'] = thumbUrl;
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
    if (videoWidth != null) {
      json['video_width'] = videoWidth;
    }
    if (videoHeight != null) {
      json['video_height'] = videoHeight;
    }
    if (videoDuration != null) {
      json['video_duration'] = videoDuration;
    }
    if (description != null) {
      json['description'] = description;
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
