import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestAnswerPreCheckoutQuery extends Request {
  RequestAnswerPreCheckoutQuery(
      RequestParametersAnswerPreCheckoutQuery parameters)
      : super(RequestMethod.answerPreCheckoutQuery, parameters);

  factory RequestAnswerPreCheckoutQuery.create(
      {required String preCheckoutQueryId,
      required bool ok,
      String? errorMessage}) {
    final requestParameters = RequestParametersAnswerPreCheckoutQuery(
        preCheckoutQueryId: preCheckoutQueryId,
        ok: ok,
        errorMessage: errorMessage);
    return RequestAnswerPreCheckoutQuery(requestParameters);
  }

  @override
  ResponseAnswerPreCheckoutQuery respondFromJson(Map<String, dynamic> json) =>
      ResponseAnswerPreCheckoutQuery.fromJson(json)..withRequest(this);
}
