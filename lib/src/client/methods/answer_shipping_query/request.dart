import '../../../constants/request_method.dart';
import '../../../models/shipping_option.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestAnswerShippingQuery extends Request {
  RequestAnswerShippingQuery(RequestParametersAnswerShippingQuery parameters)
      : super(RequestMethod.answerShippingQuery, parameters);

  factory RequestAnswerShippingQuery.create(
      {required String shippingQueryId,
      required bool ok,
      List<ShippingOption>? shippingOptions,
      String? errorMessage}) {
    final requestParameters = RequestParametersAnswerShippingQuery(
        shippingQueryId: shippingQueryId,
        ok: ok,
        shippingOptions: shippingOptions,
        errorMessage: errorMessage);
    return RequestAnswerShippingQuery(requestParameters);
  }

  @override
  ResponseAnswerShippingQuery respondFromJson(Map<String, dynamic> json) =>
      ResponseAnswerShippingQuery.fromJson(json)..withRequest(this);
}
