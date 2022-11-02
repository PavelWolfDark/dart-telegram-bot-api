import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestUnbanChatSenderChat extends Request {
  RequestUnbanChatSenderChat(RequestParametersUnbanChatSenderChat parameters)
      : super(RequestMethod.unbanChatSenderChat, parameters);

  @override
  ResponseUnbanChatSenderChat respondFromJson(Map<String, dynamic> json) =>
      ResponseUnbanChatSenderChat.fromJson(json)..withRequest(this);
}
