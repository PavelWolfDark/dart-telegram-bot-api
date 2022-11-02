import '../../request_parameters.dart';

class RequestParametersPinChatMessage implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final int messageId;
  final bool? disableNotification;

  RequestParametersPinChatMessage(
      {required this.chatId,
      required this.messageId,
      this.disableNotification});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['message_id'] = messageId;
    if (disableNotification != null) {
      json['disable_notification'] = disableNotification;
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    formData['message_id'] = messageId.toString();
    if (disableNotification != null) {
      formData['disable_notification'] = disableNotification.toString();
    }
    return formData;
  }
}
