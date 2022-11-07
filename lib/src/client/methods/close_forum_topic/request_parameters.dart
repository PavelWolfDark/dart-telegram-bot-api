import '../../request_parameters.dart';

class RequestParametersCloseForumTopic implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final int messageThreadId;

  RequestParametersCloseForumTopic(
      {required this.chatId, required this.messageThreadId});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['message_thread_id'] = messageThreadId;
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    formData['message_thread_id'] = messageThreadId.toString();
    return formData;
  }
}
