import '../../request_parameters.dart';

class RequestParametersRevokeChatInviteLink implements RequestParameters {
  @override
  final hasInputFiles = false;
  // int | String
  final Object chatId;
  final String inviteLink;

  RequestParametersRevokeChatInviteLink(
      {required this.chatId, required this.inviteLink});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['chat_id'] = chatId;
    json['invite_link'] = inviteLink;
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['chat_id'] = chatId.toString();
    formData['invite_link'] = inviteLink;
    return formData;
  }
}
