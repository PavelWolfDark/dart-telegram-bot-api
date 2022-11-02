import '../../../models/chat.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseGetChat extends Response<Chat> {
  ResponseGetChat(
      {required bool ok,
      String? description,
      Chat? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseGetChat.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonResult = json['result'];
    Chat? result;
    if (jsonResult != null) {
      result = Chat.fromJson(jsonResult);
    }
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseGetChat(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
