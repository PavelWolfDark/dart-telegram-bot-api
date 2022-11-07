class ForumTopic {
  final int messageThreadId;
  final String name;
  final int iconColor;
  final String? iconCustomEmojiId;

  ForumTopic(
      {required this.messageThreadId,
      required this.name,
      required this.iconColor,
      this.iconCustomEmojiId});

  factory ForumTopic.fromJson(Map<String, dynamic> json) => ForumTopic(
      messageThreadId: json['message_thread_id'],
      name: json['name'],
      iconColor: json['icon_color'],
      iconCustomEmojiId: json['icon_custom_emoji_id']);
}
