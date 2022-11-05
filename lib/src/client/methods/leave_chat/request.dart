import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestLeaveChat extends Request {
  RequestLeaveChat(RequestParametersLeaveChat parameters)
      : super(RequestMethod.leaveChat, parameters);

  factory RequestLeaveChat.create(
      {
      // int | String
      required Object chatId}) {
    final requestParameters = RequestParametersLeaveChat(chatId: chatId);
    return RequestLeaveChat(requestParameters);
  }

  @override
  ResponseLeaveChat respondFromJson(Map<String, dynamic> json) =>
      ResponseLeaveChat.fromJson(json)..withRequest(this);
}
