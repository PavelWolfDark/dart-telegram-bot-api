import '../../../models/webhook_info.dart';
import '../../../models/response_parameters.dart';
import '../../response.dart';

class ResponseGetWebhookInfo extends Response<WebhookInfo> {
  ResponseGetWebhookInfo(
      {required bool ok,
      String? description,
      WebhookInfo? result,
      int? errorCode,
      ResponseParameters? parameters})
      : super(
            ok: ok,
            description: description,
            result: result,
            errorCode: errorCode,
            parameters: parameters);

  factory ResponseGetWebhookInfo.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic>? jsonResult = json['result'];
    WebhookInfo? result;
    if (jsonResult != null) {
      result = WebhookInfo.fromJson(jsonResult);
    }
    Map<String, dynamic>? jsonParameters = json['parameters'];
    ResponseParameters? parameters;
    if (jsonParameters != null) {
      parameters = ResponseParameters.fromJson(jsonParameters);
    }
    return ResponseGetWebhookInfo(
        ok: json['ok'],
        description: json['description'],
        result: result,
        errorCode: json['error_code'],
        parameters: parameters);
  }
}
