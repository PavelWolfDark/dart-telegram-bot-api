import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestPinChatMessage extends Request {
  RequestPinChatMessage(RequestParametersPinChatMessage parameters)
      : super(RequestMethod.pinChatMessage, parameters);

  @override
  ResponsePinChatMessage respondFromJson(Map<String, dynamic> json) =>
      ResponsePinChatMessage.fromJson(json)..withRequest(this);
}
