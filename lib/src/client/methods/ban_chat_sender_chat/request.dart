import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestBanChatSenderChat extends Request {
  RequestBanChatSenderChat(RequestParametersBanChatSenderChat parameters)
      : super(RequestMethod.banChatSenderChat, parameters);

  @override
  ResponseBanChatSenderChat respondFromJson(Map<String, dynamic> json) =>
      ResponseBanChatSenderChat.fromJson(json)..withRequest(this);
}
