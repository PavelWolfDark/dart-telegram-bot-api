import '../../request_parameters.dart';

class RequestParametersSendChatAction implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  // ChatAction
  final String action;

  RequestParametersSendChatAction({required this.chatId, required this.action});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['action'] = action;
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    formData['action'] = action;
    return formData;
  }
}
