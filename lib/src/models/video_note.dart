import 'photo_size.dart';

class VideoNote {
  final String fileId;
  final String fileUniqueId;
  final int length;
  final int duration;
  final PhotoSize? thumb;
  final int? fileSize;

  VideoNote(
      {required this.fileId,
      required this.fileUniqueId,
      required this.length,
      required this.duration,
      this.thumb,
      this.fileSize});

  factory VideoNote.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonThumb = json['thumb'];
    PhotoSize? thumb;
    if (jsonThumb != null) {
      thumb = PhotoSize.fromJson(jsonThumb);
    }
    return VideoNote(
        fileId: json['file_id'],
        fileUniqueId: json['file_unique_id'],
        length: json['length'],
        duration: json['duration'],
        thumb: thumb,
        fileSize: json['file_size']);
  }
}
