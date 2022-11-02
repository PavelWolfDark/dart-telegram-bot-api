import '../../../models/sent_web_app_message.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseAnswerWebAppQuery extends Response<SentWebAppMessage> {
  ResponseAnswerWebAppQuery(
      {required bool ok,
      String? description,
      SentWebAppMessage? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseAnswerWebAppQuery.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonResult = json['result'];
    SentWebAppMessage? result;
    if (jsonResult != null) {
      result = SentWebAppMessage.fromJson(jsonResult);
    }
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseAnswerWebAppQuery(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
