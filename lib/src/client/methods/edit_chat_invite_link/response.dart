import '../../../models/chat_invite_link.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseEditChatInviteLink extends Response<ChatInviteLink> {
  ResponseEditChatInviteLink(
      {required bool ok,
      String? description,
      ChatInviteLink? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseEditChatInviteLink.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonResult = json['result'];
    ChatInviteLink? result;
    if (jsonResult != null) {
      result = ChatInviteLink.fromJson(jsonResult);
    }
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseEditChatInviteLink(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
