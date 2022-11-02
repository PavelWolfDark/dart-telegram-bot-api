class PassportFile {
  final String fileId;
  final String fileUniqueId;
  final int fileSize;
  final int fileDate;

  PassportFile(
      {required this.fileId,
      required this.fileUniqueId,
      required this.fileSize,
      required this.fileDate});

  factory PassportFile.fromJson(Map<String, dynamic> json) => PassportFile(
      fileId: json['file_id'],
      fileUniqueId: json['file_unique_id'],
      fileSize: json['file_size'],
      fileDate: json['file_date']);
}
