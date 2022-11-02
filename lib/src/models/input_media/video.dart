import '../../constants/input_media_type.dart';
import '../input_media.dart';
import '../message_entity.dart';

class InputMediaVideo extends InputMedia {
  // InputFile | String
  final Object? thumb;
  final String? caption;
  // ParseMode
  final String? parseMode;
  final List<MessageEntity>? captionEntities;
  final int? width;
  final int? height;
  final int? duration;
  final bool? supportsStreaming;

  InputMediaVideo(
      {required Object media,
      this.thumb,
      this.caption,
      this.parseMode,
      this.captionEntities,
      this.width,
      this.height,
      this.duration,
      this.supportsStreaming})
      : super(type: InputMediaType.video, media: media);

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
    if (width != null) {
      json['width'] = width;
    }
    if (height != null) {
      json['height'] = height;
    }
    if (duration != null) {
      json['duration'] = duration;
    }
    if (supportsStreaming != null) {
      json['supports_streaming'] = supportsStreaming;
    }
    return json;
  }
}
