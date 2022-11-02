import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendMessage extends Request {
  RequestSendMessage(RequestParametersSendMessage parameters)
      : super(RequestMethod.sendMessage, parameters);

  @override
  ResponseSendMessage respondFromJson(Map<String, dynamic> json) =>
      ResponseSendMessage.fromJson(json)..withRequest(this);
}
