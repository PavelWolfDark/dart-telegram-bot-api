class PhotoSize {
  final String fileId;
  final String fileUniqueId;
  final int width;
  final int height;
  final int? fileSize;

  PhotoSize(
      {required this.fileId,
      required this.fileUniqueId,
      required this.width,
      required this.height,
      this.fileSize});

  factory PhotoSize.fromJson(Map<String, dynamic> json) => PhotoSize(
      fileId: json['file_id'],
      fileUniqueId: json['file_unique_id'],
      width: json['width'],
      height: json['height'],
      fileSize: json['file_size']);
}
