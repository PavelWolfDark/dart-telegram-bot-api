import '../../constants/input_media_type.dart';
import '../input_media.dart';
import '../message_entity.dart';

class InputMediaDocument extends InputMedia {
  // InputFile | String
  final Object? thumb;
  final String? caption;
  // ParseMode
  final String? parseMode;
  final List<MessageEntity>? captionEntities;
  final bool? disableContentTypeDetection;

  InputMediaDocument(
      {required Object media,
      this.thumb,
      this.caption,
      this.parseMode,
      this.captionEntities,
      this.disableContentTypeDetection})
      : super(type: InputMediaType.document, media: media);

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
    if (disableContentTypeDetection != null) {
      json['disable_content_type_detection'] = disableContentTypeDetection;
    }
    return json;
  }
}
