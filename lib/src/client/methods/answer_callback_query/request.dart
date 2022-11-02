import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestAnswerCallbackQuery extends Request {
  RequestAnswerCallbackQuery(RequestParametersAnswerCallbackQuery parameters)
      : super(RequestMethod.answerCallbackQuery, parameters);

  @override
  ResponseAnswerCallbackQuery respondFromJson(Map<String, dynamic> json) =>
      ResponseAnswerCallbackQuery.fromJson(json)..withRequest(this);
}
