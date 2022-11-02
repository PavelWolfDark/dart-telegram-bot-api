import '../../../models/message.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseEditMessageCaption extends Response<Object> {
  ResponseEditMessageCaption(
      {required bool ok,
      String? description,
      Object? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseEditMessageCaption.fromJson(Map<String, dynamic> json) {
    Object? jsonResult = json['result'];
    Object? result;
    if (jsonResult != null) {
      result = jsonResult is Map<String, dynamic>
          ? Message.fromJson(jsonResult)
          : jsonResult;
    }
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseEditMessageCaption(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
