import '../../request_parameters.dart';

class RequestParametersGetChat implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;

  RequestParametersGetChat({required this.chatId});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    return formData;
  }
}
