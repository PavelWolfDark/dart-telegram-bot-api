import '../../request_parameters.dart';

class RequestParametersCreateForumTopic implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final String name;
  final int? iconColor;
  final String? iconCustomEmojiId;

  RequestParametersCreateForumTopic(
      {required this.chatId,
      required this.name,
      this.iconColor,
      this.iconCustomEmojiId});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['name'] = name;
    if (iconColor != null) {
      json['icon_color'] = iconColor;
    }
    if (iconCustomEmojiId != null) {
      json['icon_custom_emoji_id'] = iconCustomEmojiId;
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    formData['name'] = name;
    if (iconColor != null) {
      formData['icon_color'] = iconColor.toString();
    }
    if (iconCustomEmojiId != null) {
      formData['icon_custom_emoji_id'] = iconCustomEmojiId!;
    }
    return formData;
  }
}
