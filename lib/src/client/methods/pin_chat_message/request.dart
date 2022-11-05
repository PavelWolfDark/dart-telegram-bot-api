import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestPinChatMessage extends Request {
  RequestPinChatMessage(RequestParametersPinChatMessage parameters)
      : super(RequestMethod.pinChatMessage, parameters);

  factory RequestPinChatMessage.create(
      {
      // int | String
      required Object chatId,
      required int messageId,
      bool? disableNotification}) {
    final requestParameters = RequestParametersPinChatMessage(
        chatId: chatId,
        messageId: messageId,
        disableNotification: disableNotification);
    return RequestPinChatMessage(requestParameters);
  }

  @override
  ResponsePinChatMessage respondFromJson(Map<String, dynamic> json) =>
      ResponsePinChatMessage.fromJson(json)..withRequest(this);
}
