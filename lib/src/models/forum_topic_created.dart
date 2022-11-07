class ForumTopicCreated {
  final String name;
  final int iconColor;
  final String? iconCustomEmojiId;

  ForumTopicCreated(
      {required this.name, required this.iconColor, this.iconCustomEmojiId});

  factory ForumTopicCreated.fromJson(Map<String, dynamic> json) =>
      ForumTopicCreated(
          name: json['name'],
          iconColor: json['icon_color'],
          iconCustomEmojiId: json['icon_custom_emoji_id']);
}
