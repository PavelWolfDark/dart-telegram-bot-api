import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestUnpinAllChatMessages extends Request {
  RequestUnpinAllChatMessages(RequestParametersUnpinAllChatMessages parameters)
      : super(RequestMethod.unpinAllChatMessages, parameters);

  factory RequestUnpinAllChatMessages.create(
      {
      // int | String
      required Object chatId}) {
    final requestParameters =
        RequestParametersUnpinAllChatMessages(chatId: chatId);
    return RequestUnpinAllChatMessages(requestParameters);
  }

  @override
  ResponseUnpinAllChatMessages respondFromJson(Map<String, dynamic> json) =>
      ResponseUnpinAllChatMessages.fromJson(json)..withRequest(this);
}
