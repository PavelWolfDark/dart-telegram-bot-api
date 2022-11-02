import '../../../models/chat_member.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseGetChatAdministrators extends Response<List<ChatMember>> {
  ResponseGetChatAdministrators(
      {required bool ok,
      String? description,
      List<ChatMember>? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseGetChatAdministrators.fromJson(Map<String, dynamic> json) {
    List<dynamic>? jsonResult = json['result'];
    List<ChatMember>? result;
    if (jsonResult != null) {
      result = [];
      for (Map<String, dynamic> jsonChatMember in jsonResult) {
        result.add(ChatMember.fromJson(jsonChatMember));
      }
    }
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseGetChatAdministrators(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
