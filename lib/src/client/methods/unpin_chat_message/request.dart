import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestUnpinChatMessage extends Request {
  RequestUnpinChatMessage(RequestParametersUnpinChatMessage parameters)
      : super(RequestMethod.unpinChatMessage, parameters);

  @override
  ResponseUnpinChatMessage respondFromJson(Map<String, dynamic> json) =>
      ResponseUnpinChatMessage.fromJson(json)..withRequest(this);
}
