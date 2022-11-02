class File {
  final String fileId;
  final String fileUniqueId;
  final int? fileSize;
  final String? filePath;

  File(
      {required this.fileId,
      required this.fileUniqueId,
      this.fileSize,
      this.filePath});

  factory File.fromJson(Map<String, dynamic> json) => File(
      fileId: json['file_id'],
      fileUniqueId: json['file_unique_id'],
      fileSize: json['file_size'],
      filePath: json['file_path']);
}
