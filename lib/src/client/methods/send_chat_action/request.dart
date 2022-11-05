import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSendChatAction extends Request {
  RequestSendChatAction(RequestParametersSendChatAction parameters)
      : super(RequestMethod.sendChatAction, parameters);

  factory RequestSendChatAction.create(
      {
      // int | String
      required Object chatId,
      // ChatAction
      required String action}) {
    final requestParameters =
        RequestParametersSendChatAction(chatId: chatId, action: action);
    return RequestSendChatAction(requestParameters);
  }

  @override
  ResponseSendChatAction respondFromJson(Map<String, dynamic> json) =>
      ResponseSendChatAction.fromJson(json)..withRequest(this);
}
