import '../../constants/input_media_type.dart';
import '../input_media.dart';
import '../message_entity.dart';

class InputMediaPhoto extends InputMedia {
  final String? caption;
  // ParseMode
  final String? parseMode;
  final List<MessageEntity>? captionEntities;

  InputMediaPhoto(
      {required Object media,
      this.caption,
      this.parseMode,
      this.captionEntities})
      : super(type: InputMediaType.photo, media: media);

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
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
    return json;
  }
}
