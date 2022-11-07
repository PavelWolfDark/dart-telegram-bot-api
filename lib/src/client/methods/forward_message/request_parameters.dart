import '../../request_parameters.dart';

class RequestParametersForwardMessage implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final int? messageThreadId;
  // int | String
  final Object fromChatId;
  final int messageId;
  final bool? disableNotification;
  final bool? protectContent;

  RequestParametersForwardMessage(
      {required this.chatId,
      this.messageThreadId,
      required this.fromChatId,
      required this.messageId,
      this.disableNotification,
      this.protectContent});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    if (messageThreadId != null) {
      json['message_thread_id'] = messageThreadId;
    }
    json['from_chat_id'] = fromChatId;
    json['message_id'] = messageId;
    if (disableNotification != null) {
      json['disable_notification'] = disableNotification;
    }
    if (protectContent != null) {
      json['protect_content'] = protectContent;
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    if (messageThreadId != null) {
      formData['message_thread_id'] = messageThreadId.toString();
    }
    formData['from_chat_id'] = fromChatId.toString();
    formData['message_id'] = messageId.toString();
    if (disableNotification != null) {
      formData['disable_notification'] = disableNotification.toString();
    }
    if (protectContent != null) {
      formData['protect_content'] = protectContent.toString();
    }
    return formData;
  }
}
