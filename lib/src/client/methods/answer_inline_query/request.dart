import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestAnswerInlineQuery extends Request {
  RequestAnswerInlineQuery(RequestParametersAnswerInlineQuery parameters)
      : super(RequestMethod.answerInlineQuery, parameters);

  @override
  ResponseAnswerInlineQuery respondFromJson(Map<String, dynamic> json) =>
      ResponseAnswerInlineQuery.fromJson(json)..withRequest(this);
}
