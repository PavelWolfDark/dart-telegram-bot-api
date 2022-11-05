import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestUnbanChatSenderChat extends Request {
  RequestUnbanChatSenderChat(RequestParametersUnbanChatSenderChat parameters)
      : super(RequestMethod.unbanChatSenderChat, parameters);

  factory RequestUnbanChatSenderChat.create(
      {
      // int | String
      required Object chatId,
      required int senderChatId}) {
    final requestParameters = RequestParametersUnbanChatSenderChat(
        chatId: chatId, senderChatId: senderChatId);
    return RequestUnbanChatSenderChat(requestParameters);
  }

  @override
  ResponseUnbanChatSenderChat respondFromJson(Map<String, dynamic> json) =>
      ResponseUnbanChatSenderChat.fromJson(json)..withRequest(this);
}
