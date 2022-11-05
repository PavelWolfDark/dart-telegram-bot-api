import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetChatMember extends Request {
  RequestGetChatMember(RequestParametersGetChatMember parameters)
      : super(RequestMethod.getChatMember, parameters);

  factory RequestGetChatMember.create(
      {
      // int | String
      required Object chatId,
      required int userId}) {
    final requestParameters =
        RequestParametersGetChatMember(chatId: chatId, userId: userId);
    return RequestGetChatMember(requestParameters);
  }

  @override
  ResponseGetChatMember respondFromJson(Map<String, dynamic> json) =>
      ResponseGetChatMember.fromJson(json)..withRequest(this);
}
