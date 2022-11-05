import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestAnswerCallbackQuery extends Request {
  RequestAnswerCallbackQuery(RequestParametersAnswerCallbackQuery parameters)
      : super(RequestMethod.answerCallbackQuery, parameters);

  factory RequestAnswerCallbackQuery.create(
      {required String callbackQueryId,
      String? text,
      bool? showAlert,
      String? url,
      int? cacheTime}) {
    final requestParameters = RequestParametersAnswerCallbackQuery(
        callbackQueryId: callbackQueryId,
        text: text,
        showAlert: showAlert,
        url: url,
        cacheTime: cacheTime);
    return RequestAnswerCallbackQuery(requestParameters);
  }

  @override
  ResponseAnswerCallbackQuery respondFromJson(Map<String, dynamic> json) =>
      ResponseAnswerCallbackQuery.fromJson(json)..withRequest(this);
}
