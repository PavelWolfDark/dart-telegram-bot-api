import '../../request_parameters.dart';

class RequestParametersGetGameHighScores implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object? chatId;
  final int? messageId;
  final String? inlineMessageId;
  final int userId;

  RequestParametersGetGameHighScores(
      {this.chatId,
      this.messageId,
      this.inlineMessageId,
      required this.userId});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (chatId != null) {
      json['chat_id'] = chatId;
    }
    if (messageId != null) {
      json['message_id'] = messageId;
    }
    if (inlineMessageId != null) {
      json['inline_message_id'] = inlineMessageId;
    }
    json['user_id'] = userId;
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    if (chatId != null) {
      formData['chat_id'] = chatId.toString();
    }
    if (messageId != null) {
      formData['message_id'] = messageId.toString();
    }
    if (inlineMessageId != null) {
      formData['inline_message_id'] = inlineMessageId!;
    }
    formData['user_id'] = userId.toString();
    return formData;
  }
}
