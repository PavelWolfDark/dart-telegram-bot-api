import '../../request_parameters.dart';

class RequestParametersApproveChatJoinRequest implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final int userId;

  RequestParametersApproveChatJoinRequest(
      {required this.chatId, required this.userId});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['user_id'] = userId;
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    formData['user_id'] = userId.toString();
    return formData;
  }
}
