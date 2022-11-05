import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestGetChat extends Request {
  RequestGetChat(RequestParametersGetChat parameters)
      : super(RequestMethod.getChat, parameters);

  factory RequestGetChat.create(
      {
      // int | String
      required Object chatId}) {
    final requestParameters = RequestParametersGetChat(chatId: chatId);
    return RequestGetChat(requestParameters);
  }

  @override
  ResponseGetChat respondFromJson(Map<String, dynamic> json) =>
      ResponseGetChat.fromJson(json)..withRequest(this);
}
