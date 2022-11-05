import '../../../constants/request_method.dart';
import '../../../models/chat_permissions.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestRestrictChatMember extends Request {
  RequestRestrictChatMember(RequestParametersRestrictChatMember parameters)
      : super(RequestMethod.restrictChatMember, parameters);

  factory RequestRestrictChatMember.create(
      {
      // int | String
      required Object chatId,
      required int userId,
      required ChatPermissions permissions,
      int? untilDate}) {
    final requestParameters = RequestParametersRestrictChatMember(
        chatId: chatId,
        userId: userId,
        permissions: permissions,
        untilDate: untilDate);
    return RequestRestrictChatMember(requestParameters);
  }

  @override
  ResponseRestrictChatMember respondFromJson(Map<String, dynamic> json) =>
      ResponseRestrictChatMember.fromJson(json)..withRequest(this);
}
