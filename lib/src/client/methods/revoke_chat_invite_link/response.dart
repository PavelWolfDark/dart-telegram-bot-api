import '../../../models/chat_invite_link.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseRevokeChatInviteLink extends Response<ChatInviteLink> {
  ResponseRevokeChatInviteLink(
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

  factory ResponseRevokeChatInviteLink.fromJson(Map<String, dynamic> json) {
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
    return ResponseRevokeChatInviteLink(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
