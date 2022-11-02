import '../../../models/message_id.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseCopyMessage extends Response<MessageId> {
  ResponseCopyMessage(
      {required bool ok,
      String? description,
      MessageId? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseCopyMessage.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonResult = json['result'];
    MessageId? result;
    if (jsonResult != null) {
      result = MessageId.fromJson(jsonResult);
    }
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseCopyMessage(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
