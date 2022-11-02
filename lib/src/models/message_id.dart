class MessageId {
  final int messageId;

  MessageId({required this.messageId});

  factory MessageId.fromJson(Map<String, dynamic> json) =>
      MessageId(messageId: json['message_id']);
}
