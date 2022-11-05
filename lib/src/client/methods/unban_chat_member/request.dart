import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestUnbanChatMember extends Request {
  RequestUnbanChatMember(RequestParametersUnbanChatMember parameters)
      : super(RequestMethod.unbanChatMember, parameters);

  factory RequestUnbanChatMember.create(
      {
      // int | String
      required Object chatId,
      required int userId,
      bool? onlyIfBanned}) {
    final requestParameters = RequestParametersUnbanChatMember(
        chatId: chatId, userId: userId, onlyIfBanned: onlyIfBanned);
    return RequestUnbanChatMember(requestParameters);
  }

  @override
  ResponseUnbanChatMember respondFromJson(Map<String, dynamic> json) =>
      ResponseUnbanChatMember.fromJson(json)..withRequest(this);
}
