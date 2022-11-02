import 'sticker.dart';
import 'photo_size.dart';

class StickerSet {
  final String name;
  final String title;
  // StickerType
  final String stickerType;
  final bool isAnimated;
  final bool isVideo;
  final List<Sticker> stickers;
  final PhotoSize? thumb;

  StickerSet(
      {required this.name,
      required this.title,
      required this.stickerType,
      required this.isAnimated,
      required this.isVideo,
      required this.stickers,
      this.thumb});

  factory StickerSet.fromJson(Map<String, dynamic> json) {
    List<dynamic> jsonStickers = json['stickers'];
    List<Sticker> stickers = [];
    for (Map<String, dynamic> jsonSticker in jsonStickers) {
      stickers.add(Sticker.fromJson(jsonSticker));
    }
    Map<String, dynamic>? jsonThumb = json['thumb'];
    PhotoSize? thumb;
    if (jsonThumb != null) {
      thumb = PhotoSize.fromJson(jsonThumb);
    }
    return StickerSet(
        name: json['name'],
        title: json['title'],
        stickerType: json['sticker_type'],
        isAnimated: json['is_animated'],
        isVideo: json['is_video'],
        stickers: stickers,
        thumb: thumb);
  }
}
