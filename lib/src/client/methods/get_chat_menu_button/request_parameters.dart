import '../../request_parameters.dart';

class RequestParametersGetChatMenuButton implements RequestParameters {
  @override
  final hasInputFiles = false;
  final int? chatId;

  RequestParametersGetChatMenuButton({this.chatId});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (chatId != null) {
      json['chat_id'] = chatId;
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    if (chatId != null) {
      formData['chat_id'] = chatId.toString();
    }
    return formData;
  }
}
