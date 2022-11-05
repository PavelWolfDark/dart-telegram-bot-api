import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetChatAdministrators extends Request {
  RequestGetChatAdministrators(
      RequestParametersGetChatAdministrators parameters)
      : super(RequestMethod.getChatAdministrators, parameters);

  factory RequestGetChatAdministrators.create(
      {
      // int | String
      required Object chatId}) {
    final requestParameters =
        RequestParametersGetChatAdministrators(chatId: chatId);
    return RequestGetChatAdministrators(requestParameters);
  }

  @override
  ResponseGetChatAdministrators respondFromJson(Map<String, dynamic> json) =>
      ResponseGetChatAdministrators.fromJson(json)..withRequest(this);
}
