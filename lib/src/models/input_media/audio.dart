import '../../constants/input_media_type.dart';
import '../input_media.dart';
import '../message_entity.dart';

class InputMediaAudio extends InputMedia {
  // InputFile | String
  final Object? thumb;
  final String? caption;
  // ParseMode
  final String? parseMode;
  final List<MessageEntity>? captionEntities;
  final int? duration;
  final String? performer;
  final String? title;

  InputMediaAudio(
      {required Object media,
      this.thumb,
      this.caption,
      this.parseMode,
      this.captionEntities,
      this.duration,
      this.performer,
      this.title})
      : super(type: InputMediaType.audio, media: media);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    if (thumb != null) {
      json['thumb'] = thumb;
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
    if (duration != null) {
      json['duration'] = duration;
    }
    if (performer != null) {
      json['performer'] = performer;
    }
    if (title != null) {
      json['title'] = title;
    }
    return json;
  }
}
