import '../../../models/message.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseSendPhoto extends Response<Message> {
  ResponseSendPhoto(
      {required bool ok,
      String? description,
      Message? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseSendPhoto.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonResult = json['result'];
    Message? result;
    if (jsonResult != null) {
      result = Message.fromJson(jsonResult);
    }
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseSendPhoto(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
