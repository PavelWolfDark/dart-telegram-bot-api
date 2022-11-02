import 'photo_size.dart';

class Document {
  final String fileId;
  final String fileUniqueId;
  final PhotoSize? thumb;
  final String? fileName;
  final String? mimeType;
  final int? fileSize;

  Document(
      {required this.fileId,
      required this.fileUniqueId,
      this.thumb,
      this.fileName,
      this.mimeType,
      this.fileSize});

  factory Document.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonThumb = json['thumb'];
    PhotoSize? thumb;
    if (jsonThumb != null) {
      thumb = PhotoSize.fromJson(jsonThumb);
    }
    return Document(
        fileId: json['file_id'],
        fileUniqueId: json['file_unique_id'],
        thumb: thumb,
        fileName: json['file_name'],
        mimeType: json['mime_type'],
        fileSize: json['file_size']);
  }
}
