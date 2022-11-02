import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestEditMessageReplyMarkup extends Request {
  RequestEditMessageReplyMarkup(
      RequestParametersEditMessageReplyMarkup parameters)
      : super(RequestMethod.editMessageReplyMarkup, parameters);

  @override
  ResponseEditMessageReplyMarkup respondFromJson(Map<String, dynamic> json) =>
      ResponseEditMessageReplyMarkup.fromJson(json)..withRequest(this);
}
