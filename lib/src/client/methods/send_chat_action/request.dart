import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendChatAction extends Request {
  RequestSendChatAction(RequestParametersSendChatAction parameters)
      : super(RequestMethod.sendChatAction, parameters);

  @override
  ResponseSendChatAction respondFromJson(Map<String, dynamic> json) =>
      ResponseSendChatAction.fromJson(json)..withRequest(this);
}
