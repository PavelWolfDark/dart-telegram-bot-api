import '../../../constants/request_method.dart';
import '../../../models/inline_query_result.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestAnswerInlineQuery extends Request {
  RequestAnswerInlineQuery(RequestParametersAnswerInlineQuery parameters)
      : super(RequestMethod.answerInlineQuery, parameters);

  factory RequestAnswerInlineQuery.create(
      {required String inlineQueryId,
      required List<InlineQueryResult> results,
      int? cacheTime,
      bool? isPersonal,
      String? nextOffset,
      String? switchPmText,
      String? switchPmParameter}) {
    final requestParameters = RequestParametersAnswerInlineQuery(
        inlineQueryId: inlineQueryId,
        results: results,
        cacheTime: cacheTime,
        isPersonal: isPersonal,
        nextOffset: nextOffset,
        switchPmText: switchPmText,
        switchPmParameter: switchPmParameter);
    return RequestAnswerInlineQuery(requestParameters);
  }

  @override
  ResponseAnswerInlineQuery respondFromJson(Map<String, dynamic> json) =>
      ResponseAnswerInlineQuery.fromJson(json)..withRequest(this);
}
