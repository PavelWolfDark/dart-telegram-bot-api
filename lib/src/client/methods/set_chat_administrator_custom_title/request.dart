import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetChatAdministratorCustomTitle extends Request {
  RequestSetChatAdministratorCustomTitle(
      RequestParametersSetChatAdministratorCustomTitle parameters)
      : super(RequestMethod.setChatAdministratorCustomTitle, parameters);

  factory RequestSetChatAdministratorCustomTitle.create(
      {
      // int | String
      required Object chatId,
      required int userId,
      required String customTitle}) {
    final requestParameters = RequestParametersSetChatAdministratorCustomTitle(
        chatId: chatId, userId: userId, customTitle: customTitle);
    return RequestSetChatAdministratorCustomTitle(requestParameters);
  }

  @override
  ResponseSetChatAdministratorCustomTitle respondFromJson(
          Map<String, dynamic> json) =>
      ResponseSetChatAdministratorCustomTitle.fromJson(json)..withRequest(this);
}
