import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetChatTitle extends Request {
  RequestSetChatTitle(RequestParametersSetChatTitle parameters)
      : super(RequestMethod.setChatTitle, parameters);

  factory RequestSetChatTitle.create(
      {
      // int | String
      required Object chatId,
      required String title}) {
    final requestParameters =
        RequestParametersSetChatTitle(chatId: chatId, title: title);
    return RequestSetChatTitle(requestParameters);
  }

  @override
  ResponseSetChatTitle respondFromJson(Map<String, dynamic> json) =>
      ResponseSetChatTitle.fromJson(json)..withRequest(this);
}
