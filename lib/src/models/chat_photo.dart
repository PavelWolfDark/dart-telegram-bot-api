class ChatPhoto {
  final String smallFileId;
  final String smallFileUniqueId;
  final String bigFileId;
  final String bigFileUniqueId;

  ChatPhoto(
      {required this.smallFileId,
      required this.smallFileUniqueId,
      required this.bigFileId,
      required this.bigFileUniqueId});

  factory ChatPhoto.fromJson(Map<String, dynamic> json) => ChatPhoto(
      smallFileId: json['small_file_id'],
      smallFileUniqueId: json['small_file_unique_id'],
      bigFileId: json['big_file_id'],
      bigFileUniqueId: json['big_file_unique_id']);
}
