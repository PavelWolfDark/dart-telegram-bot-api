import 'photo_size.dart';

class Audio {
  final String fileId;
  final String fileUniqueId;
  final int duration;
  final String? performer;
  final String? title;
  final String? fileName;
  final String? mimeType;
  final int? fileSize;
  final PhotoSize? thumb;

  Audio(
      {required this.fileId,
      required this.fileUniqueId,
      required this.duration,
      this.performer,
      this.title,
      this.fileName,
      this.mimeType,
      this.fileSize,
      this.thumb});

  factory Audio.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonThumb = json['thumb'];
    PhotoSize? thumb;
    if (jsonThumb != null) {
      thumb = PhotoSize.fromJson(jsonThumb);
    }
    return Audio(
        fileId: json['file_id'],
        fileUniqueId: json['file_unique_id'],
        duration: json['duration'],
        performer: json['performer'],
        title: json['title'],
        fileName: json['file_name'],
        mimeType: json['mime_type'],
        fileSize: json['file_size'],
        thumb: thumb);
  }
}
