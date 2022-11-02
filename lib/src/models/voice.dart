class Voice {
  final String fileId;
  final String fileUniqueId;
  final int duration;
  final String? mimeType;
  final int? fileSize;

  Voice(
      {required this.fileId,
      required this.fileUniqueId,
      required this.duration,
      this.mimeType,
      this.fileSize});

  factory Voice.fromJson(Map<String, dynamic> json) => Voice(
      fileId: json['file_id'],
      fileUniqueId: json['file_unique_id'],
      duration: json['duration'],
      mimeType: json['mime_type'],
      fileSize: json['file_size']);
}
