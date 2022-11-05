import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestDeleteMessage extends Request {
  RequestDeleteMessage(RequestParametersDeleteMessage parameters)
      : super(RequestMethod.deleteMessage, parameters);

  factory RequestDeleteMessage.create(
      {
      // int | String
      required Object chatId,
      required int messageId}) {
    final requestParameters =
        RequestParametersDeleteMessage(chatId: chatId, messageId: messageId);
    return RequestDeleteMessage(requestParameters);
  }

  @override
  ResponseDeleteMessage respondFromJson(Map<String, dynamic> json) =>
      ResponseDeleteMessage.fromJson(json)..withRequest(this);
}
