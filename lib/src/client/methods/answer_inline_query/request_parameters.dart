import 'dart:convert';
import '../../../models/inline_query_result.dart';
import '../../request_parameters.dart';

class RequestParametersAnswerInlineQuery implements RequestParameters {
  @override
  final hasInputFiles = false;
  final String inlineQueryId;
  final List<InlineQueryResult> results;
  final int? cacheTime;
  final bool? isPersonal;
  final String? nextOffset;
  final String? switchPmText;
  final String? switchPmParameter;

  RequestParametersAnswerInlineQuery(
      {required this.inlineQueryId,
      required this.results,
      this.cacheTime,
      this.isPersonal,
      this.nextOffset,
      this.switchPmText,
      this.switchPmParameter});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['inline_query_id'] = inlineQueryId;
    List<Map<String, dynamic>> jsonResults = [];
    for (final result in results) {
      jsonResults.add(result.toJson());
    }
    json['results'] = jsonResults;
    if (cacheTime != null) {
      json['cache_time'] = cacheTime;
    }
    if (isPersonal != null) {
      json['is_personal'] = isPersonal;
    }
    if (nextOffset != null) {
      json['next_offset'] = nextOffset;
    }
    if (switchPmText != null) {
      json['switch_pm_text'] = switchPmText;
    }
    if (switchPmParameter != null) {
      json['switch_pm_parameter'] = switchPmParameter;
    }
    return json;
  }

  @override
  Map<String, String> toFormData() {
    Map<String, String> formData = {};
    formData['inline_query_id'] = inlineQueryId;
    List<Map<String, dynamic>> jsonResults = [];
    for (final result in results) {
      jsonResults.add(result.toJson());
    }
    formData['results'] = jsonEncode(jsonResults);
    if (cacheTime != null) {
      formData['cache_time'] = cacheTime.toString();
    }
    if (isPersonal != null) {
      formData['is_personal'] = isPersonal.toString();
    }
    if (nextOffset != null) {
      formData['next_offset'] = nextOffset!;
    }
    if (switchPmText != null) {
      formData['switch_pm_text'] = switchPmText!;
    }
    if (switchPmParameter != null) {
      formData['switch_pm_parameter'] = switchPmParameter!;
    }
    return formData;
  }
}
