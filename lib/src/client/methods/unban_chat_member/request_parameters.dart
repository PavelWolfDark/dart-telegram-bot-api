import '../../request_parameters.dart';

class RequestParametersUnbanChatMember implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final int userId;
  final bool? onlyIfBanned;

  RequestParametersUnbanChatMember(
      {required this.chatId, required this.userId, this.onlyIfBanned});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['user_id'] = userId;
    if (onlyIfBanned != null) {
      json['only_if_banned'] = onlyIfBanned;
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    formData['user_id'] = userId.toString();
    if (onlyIfBanned != null) {
      formData['only_if_banned'] = onlyIfBanned.toString();
    }
    return formData;
  }
}
