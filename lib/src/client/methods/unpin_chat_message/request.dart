import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestUnpinChatMessage extends Request {
  RequestUnpinChatMessage(RequestParametersUnpinChatMessage parameters)
      : super(RequestMethod.unpinChatMessage, parameters);

  factory RequestUnpinChatMessage.create(
      {
      // int | String
      required Object chatId,
      required int messageId}) {
    final requestParameters =
        RequestParametersUnpinChatMessage(chatId: chatId, messageId: messageId);
    return RequestUnpinChatMessage(requestParameters);
  }

  @override
  ResponseUnpinChatMessage respondFromJson(Map<String, dynamic> json) =>
      ResponseUnpinChatMessage.fromJson(json)..withRequest(this);
}
