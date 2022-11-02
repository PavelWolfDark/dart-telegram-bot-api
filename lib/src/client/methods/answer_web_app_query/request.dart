import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestAnswerWebAppQuery extends Request {
  RequestAnswerWebAppQuery(RequestParametersAnswerWebAppQuery parameters)
      : super(RequestMethod.answerWebAppQuery, parameters);

  @override
  ResponseAnswerWebAppQuery respondFromJson(Map<String, dynamic> json) =>
      ResponseAnswerWebAppQuery.fromJson(json)..withRequest(this);
}
