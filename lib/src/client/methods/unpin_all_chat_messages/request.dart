import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestUnpinAllChatMessages extends Request {
  RequestUnpinAllChatMessages(RequestParametersUnpinAllChatMessages parameters)
      : super(RequestMethod.unpinAllChatMessages, parameters);

  @override
  ResponseUnpinAllChatMessages respondFromJson(Map<String, dynamic> json) =>
      ResponseUnpinAllChatMessages.fromJson(json)..withRequest(this);
}
