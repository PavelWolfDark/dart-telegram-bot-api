import '../../request_parameters.dart';

class RequestParametersSetChatDescription implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final String? description;

  RequestParametersSetChatDescription({required this.chatId, this.description});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    if (description != null) {
      json['description'] = description;
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    if (description != null) {
      formData['description'] = description!;
    }
    return formData;
  }
}
