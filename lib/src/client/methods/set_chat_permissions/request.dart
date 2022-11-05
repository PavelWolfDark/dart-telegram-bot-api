import '../../../constants/request_method.dart';
import '../../../models/chat_permissions.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetChatPermissions extends Request {
  RequestSetChatPermissions(RequestParametersSetChatPermissions parameters)
      : super(RequestMethod.setChatPermissions, parameters);

  factory RequestSetChatPermissions.create(
      {
      // int | String
      required Object chatId,
      required ChatPermissions permissions}) {
    final requestParameters = RequestParametersSetChatPermissions(
        chatId: chatId, permissions: permissions);
    return RequestSetChatPermissions(requestParameters);
  }

  @override
  ResponseSetChatPermissions respondFromJson(Map<String, dynamic> json) =>
      ResponseSetChatPermissions.fromJson(json)..withRequest(this);
}
