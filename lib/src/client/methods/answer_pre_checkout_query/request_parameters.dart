import '../../request_parameters.dart';

class RequestParametersAnswerPreCheckoutQuery implements RequestParameters {
  @override
  final hasInputFiles = false;
  final String preCheckoutQueryId;
  final bool ok;
  final String? errorMessage;

  RequestParametersAnswerPreCheckoutQuery(
      {required this.preCheckoutQueryId, required this.ok, this.errorMessage});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['pre_checkout_query_id'] = preCheckoutQueryId;
    json['ok'] = ok;
    if (errorMessage != null) {
      json['error_message'] = errorMessage;
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['pre_checkout_query_id'] = preCheckoutQueryId;
    formData['ok'] = ok.toString();
    if (errorMessage != null) {
      formData['error_message'] = errorMessage!;
    }
    return formData;
  }
}
