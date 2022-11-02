import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestAnswerPreCheckoutQuery extends Request {
  RequestAnswerPreCheckoutQuery(
      RequestParametersAnswerPreCheckoutQuery parameters)
      : super(RequestMethod.answerPreCheckoutQuery, parameters);

  @override
  ResponseAnswerPreCheckoutQuery respondFromJson(Map<String, dynamic> json) =>
      ResponseAnswerPreCheckoutQuery.fromJson(json)..withRequest(this);
}
