import '../../../models/message.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseSendMediaGroup extends Response<List<Message>> {
  ResponseSendMediaGroup(
      {required bool ok,
      String? description,
      List<Message>? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseSendMediaGroup.fromJson(Map<String, dynamic> json) {
    List<dynamic>? jsonResult = json['result'];
    List<Message>? result;
    if (jsonResult != null) {
      result = [];
      for (Map<String, dynamic> jsonMessage in jsonResult) {
        result.add(Message.fromJson(jsonMessage));
      }
    }
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseSendMediaGroup(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
