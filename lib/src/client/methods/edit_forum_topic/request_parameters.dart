import '../../request_parameters.dart';

class RequestParametersEditForumTopic implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final int messageThreadId;
  final String name;
  final String iconCustomEmojiId;

  RequestParametersEditForumTopic(
      {required this.chatId,
      required this.messageThreadId,
      required this.name,
      required this.iconCustomEmojiId});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['message_thread_id'] = messageThreadId;
    json['name'] = name;
    json['icon_custom_emoji_id'] = iconCustomEmojiId;
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    formData['message_thread_id'] = messageThreadId.toString();
    formData['name'] = name;
    formData['icon_custom_emoji_id'] = iconCustomEmojiId;
    return formData;
  }
}
