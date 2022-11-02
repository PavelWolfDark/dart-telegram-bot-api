import 'photo_size.dart';
import 'file.dart';
import 'mask_position.dart';

class Sticker {
  final String fileId;
  final String fileUniqueId;
  // StickerType
  final String type;
  final int width;
  final int height;
  final bool isAnimated;
  final bool isVideo;
  final PhotoSize? thumb;
  final String? emoji;
  final String? setName;
  final File? premiumAnimation;
  final MaskPosition? maskPosition;
  final String? customEmojiId;
  final int? fileSize;

  Sticker(
      {required this.fileId,
      required this.fileUniqueId,
      required this.type,
      required this.width,
      required this.height,
      required this.isAnimated,
      required this.isVideo,
      this.thumb,
      this.emoji,
      this.setName,
      this.premiumAnimation,
      this.maskPosition,
      this.customEmojiId,
      this.fileSize});

  factory Sticker.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonThumb = json['thumb'];
    PhotoSize? thumb;
    if (jsonThumb != null) {
      thumb = PhotoSize.fromJson(jsonThumb);
    }
    Map<String, dynamic>? jsonPremiumAnimation = json['premium_animation'];
    File? premiumAnimation;
    if (jsonPremiumAnimation != null) {
      premiumAnimation = File.fromJson(jsonPremiumAnimation);
    }
    Map<String, dynamic>? jsonMaskPosition = json['mask_position'];
    MaskPosition? maskPosition;
    if (jsonMaskPosition != null) {
      maskPosition = MaskPosition.fromJson(jsonMaskPosition);
    }
    return Sticker(
        fileId: json['file_id'],
        fileUniqueId: json['file_unique_id'],
        type: json['type'],
        width: json['width'],
        height: json['height'],
        isAnimated: json['is_animated'],
        isVideo: json['is_video'],
        thumb: thumb,
        emoji: json['emoji'],
        setName: json['set_name'],
        premiumAnimation: premiumAnimation,
        maskPosition: maskPosition,
        customEmojiId: json['custom_emoji_id'],
        fileSize: json['file_size']);
  }
}
