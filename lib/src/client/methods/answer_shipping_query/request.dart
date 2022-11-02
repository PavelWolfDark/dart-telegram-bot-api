import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestAnswerShippingQuery extends Request {
  RequestAnswerShippingQuery(RequestParametersAnswerShippingQuery parameters)
      : super(RequestMethod.answerShippingQuery, parameters);

  @override
  ResponseAnswerShippingQuery respondFromJson(Map<String, dynamic> json) =>
      ResponseAnswerShippingQuery.fromJson(json)..withRequest(this);
}
