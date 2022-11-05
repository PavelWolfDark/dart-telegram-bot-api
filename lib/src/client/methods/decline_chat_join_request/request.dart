import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestDeclineChatJoinRequest extends Request {
  RequestDeclineChatJoinRequest(
      RequestParametersDeclineChatJoinRequest parameters)
      : super(RequestMethod.declineChatJoinRequest, parameters);

  factory RequestDeclineChatJoinRequest.create(
      {
      // int | String
      required Object chatId,
      required int userId}) {
    final requestParameters =
        RequestParametersDeclineChatJoinRequest(chatId: chatId, userId: userId);
    return RequestDeclineChatJoinRequest(requestParameters);
  }

  @override
  ResponseDeclineChatJoinRequest respondFromJson(Map<String, dynamic> json) =>
      ResponseDeclineChatJoinRequest.fromJson(json)..withRequest(this);
}
