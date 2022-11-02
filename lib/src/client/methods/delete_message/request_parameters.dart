import '../../request_parameters.dart';

class RequestParametersDeleteMessage implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final int messageId;

  RequestParametersDeleteMessage(
      {required this.chatId, required this.messageId});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['message_id'] = messageId;
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    formData['message_id'] = messageId.toString();
    return formData;
  }
}
