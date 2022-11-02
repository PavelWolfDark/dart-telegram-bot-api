import '../../../models/poll.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseStopPoll extends Response<Poll> {
  ResponseStopPoll(
      {required bool ok,
      String? description,
      Poll? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseStopPoll.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonResult = json['result'];
    Poll? result;
    if (jsonResult != null) {
      result = Poll.fromJson(jsonResult);
    }
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseStopPoll(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
