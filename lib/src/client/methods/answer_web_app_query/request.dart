import '../../../constants/request_method.dart';
import '../../../models/inline_query_result.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestAnswerWebAppQuery extends Request {
  RequestAnswerWebAppQuery(RequestParametersAnswerWebAppQuery parameters)
      : super(RequestMethod.answerWebAppQuery, parameters);

  factory RequestAnswerWebAppQuery.create(
      {required String webAppQueryId, required InlineQueryResult result}) {
    final requestParameters = RequestParametersAnswerWebAppQuery(
        webAppQueryId: webAppQueryId, result: result);
    return RequestAnswerWebAppQuery(requestParameters);
  }

  @override
  ResponseAnswerWebAppQuery respondFromJson(Map<String, dynamic> json) =>
      ResponseAnswerWebAppQuery.fromJson(json)..withRequest(this);
}
