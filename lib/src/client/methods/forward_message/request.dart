import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestForwardMessage extends Request {
  RequestForwardMessage(RequestParametersForwardMessage parameters)
      : super(RequestMethod.forwardMessage, parameters);

  factory RequestForwardMessage.create(
      {
      // int | String
      required Object chatId,
      // int | String
      required Object fromChatId,
      required int messageId,
      bool? disableNotification,
      bool? protectContent}) {
    final requestParameters = RequestParametersForwardMessage(
        chatId: chatId,
        fromChatId: fromChatId,
        messageId: messageId,
        disableNotification: disableNotification,
        protectContent: protectContent);
    return RequestForwardMessage(requestParameters);
  }

  @override
  ResponseForwardMessage respondFromJson(Map<String, dynamic> json) =>
      ResponseForwardMessage.fromJson(json)..withRequest(this);
}
