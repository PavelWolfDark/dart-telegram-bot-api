import '../../request_parameters.dart';

class RequestParametersAnswerCallbackQuery implements RequestParameters {
  @override
  final hasInputFiles = false;
  final String callbackQueryId;
  final String? text;
  final bool? showAlert;
  final String? url;
  final int? cacheTime;

  RequestParametersAnswerCallbackQuery(
      {required this.callbackQueryId,
      this.text,
      this.showAlert,
      this.url,
      this.cacheTime});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['callback_query_id'] = callbackQueryId;
    if (text != null) {
      json['text'] = text;
    }
    if (showAlert != null) {
      json['show_alert'] = showAlert;
    }
    if (url != null) {
      json['url'] = url;
    }
    if (cacheTime != null) {
      json['cache_time'] = cacheTime;
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['callback_query_id'] = callbackQueryId;
    if (text != null) {
      formData['text'] = text!;
    }
    if (showAlert != null) {
      formData['show_alert'] = showAlert.toString();
    }
    if (url != null) {
      formData['url'] = url!;
    }
    if (cacheTime != null) {
      formData['cache_time'] = cacheTime.toString();
    }
    return formData;
  }
}
