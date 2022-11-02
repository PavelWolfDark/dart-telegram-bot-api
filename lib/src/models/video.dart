import 'photo_size.dart';

class Video {
  final String fileId;
  final String fileUniqueId;
  final int width;
  final int height;
  final int duration;
  final PhotoSize? thumb;
  final String? fileName;
  final String? mimeType;
  final int? fileSize;

  Video(
      {required this.fileId,
      required this.fileUniqueId,
      required this.width,
      required this.height,
      required this.duration,
      this.thumb,
      this.fileName,
      this.mimeType,
      this.fileSize});

  factory Video.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonThumb = json['thumb'];
    PhotoSize? thumb;
    if (jsonThumb != null) {
      thumb = PhotoSize.fromJson(jsonThumb);
    }
    return Video(
        fileId: json['file_id'],
        fileUniqueId: json['file_unique_id'],
        width: json['width'],
        height: json['height'],
        duration: json['duration'],
        thumb: thumb,
        fileName: json['file_name'],
        mimeType: json['mime_type'],
        fileSize: json['file_size']);
  }
}
