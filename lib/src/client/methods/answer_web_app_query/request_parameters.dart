import 'dart:convert';
import '../../../models/inline_query_result.dart';
import '../../request_parameters.dart';

class RequestParametersAnswerWebAppQuery implements RequestParameters {
  @override
  final hasInputFiles = false;
  final String webAppQueryId;
  final InlineQueryResult result;

  RequestParametersAnswerWebAppQuery(
      {required this.webAppQueryId, required this.result});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['web_app_query_id'] = webAppQueryId;
    json['result'] = result.toJson();
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['web_app_query_id'] = webAppQueryId;
    formData['result'] = jsonEncode(result.toJson());
    return formData;
  }
}
