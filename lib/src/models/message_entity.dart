import 'user.dart';

class MessageEntity {
  // MessageEntityType
  final String type;
  final int offset;
  final int length;
  final String? url;
  final User? user;
  final String? language;
  final String? customEmojiId;

  MessageEntity(
      {required this.type,
      required this.offset,
      required this.length,
      this.url,
      this.user,
      this.language,
      this.customEmojiId});

  factory MessageEntity.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonUser = json['user'];
    User? user;
    if (jsonUser != null) {
      user = User.fromJson(jsonUser);
    }
    return MessageEntity(
        type: json['type'],
        offset: json['offset'],
        length: json['length'],
        url: json['url'],
        user: user,
        language: json['language'],
        customEmojiId: json['custom_emoji_id']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['type'] = type;
    json['offset'] = offset;
    json['length'] = length;
    if (url != null) {
      json['url'] = url;
    }
    if (user != null) {
      json['user'] = user!.toJson();
    }
    if (language != null) {
      json['language'] = language;
    }
    if (customEmojiId != null) {
      json['custom_emoji_id'] = customEmojiId;
    }
    return json;
  }
}
