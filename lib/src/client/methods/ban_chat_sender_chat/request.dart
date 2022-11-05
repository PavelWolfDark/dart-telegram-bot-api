import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestBanChatSenderChat extends Request {
  RequestBanChatSenderChat(RequestParametersBanChatSenderChat parameters)
      : super(RequestMethod.banChatSenderChat, parameters);

  factory RequestBanChatSenderChat.create(
      {
      // int | String
      required Object chatId,
      required int senderChatId}) {
    final requestParameters = RequestParametersBanChatSenderChat(
        chatId: chatId, senderChatId: senderChatId);
    return RequestBanChatSenderChat(requestParameters);
  }

  @override
  ResponseBanChatSenderChat respondFromJson(Map<String, dynamic> json) =>
      ResponseBanChatSenderChat.fromJson(json)..withRequest(this);
}
