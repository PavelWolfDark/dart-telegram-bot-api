import '../../../models/chat_member.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseGetChatMember extends Response<ChatMember> {
  ResponseGetChatMember(
      {required bool ok,
      String? description,
      ChatMember? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseGetChatMember.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonResult = json['result'];
    ChatMember? result;
    if (jsonResult != null) {
      result = ChatMember.fromJson(jsonResult);
    }
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseGetChatMember(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
