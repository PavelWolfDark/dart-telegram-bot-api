import '../../request_parameters.dart';

class RequestParametersSetChatAdministratorCustomTitle
    implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final int userId;
  final String customTitle;

  RequestParametersSetChatAdministratorCustomTitle(
      {required this.chatId, required this.userId, required this.customTitle});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['user_id'] = userId;
    json['custom_title'] = customTitle;
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    formData['user_id'] = userId.toString();
    formData['custom_title'] = customTitle;
    return formData;
  }
}
