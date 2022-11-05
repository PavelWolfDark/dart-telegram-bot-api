import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetChatMemberCount extends Request {
  RequestGetChatMemberCount(RequestParametersGetChatMemberCount parameters)
      : super(RequestMethod.getChatMemberCount, parameters);

  factory RequestGetChatMemberCount.create(
      {
      // int | String
      required Object chatId}) {
    final requestParameters =
        RequestParametersGetChatMemberCount(chatId: chatId);
    return RequestGetChatMemberCount(requestParameters);
  }

  @override
  ResponseGetChatMemberCount respondFromJson(Map<String, dynamic> json) =>
      ResponseGetChatMemberCount.fromJson(json)..withRequest(this);
}
