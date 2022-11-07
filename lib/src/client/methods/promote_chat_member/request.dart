import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestPromoteChatMember extends Request {
  RequestPromoteChatMember(RequestParametersPromoteChatMember parameters)
      : super(RequestMethod.promoteChatMember, parameters);

  factory RequestPromoteChatMember.create(
      {
      // int | String
      required Object chatId,
      required int userId,
      bool? isAnonymous,
      bool? canManageChat,
      bool? canPostMessages,
      bool? canEditMessages,
      bool? canDeleteMessages,
      bool? canManageVideoChats,
      bool? canRestrictMembers,
      bool? canPromoteMembers,
      bool? canChangeInfo,
      bool? canInviteUsers,
      bool? canPinMessages,
      bool? canManageTopics}) {
    final requestParameters = RequestParametersPromoteChatMember(
        chatId: chatId,
        userId: userId,
        isAnonymous: isAnonymous,
        canManageChat: canManageChat,
        canPostMessages: canPostMessages,
        canEditMessages: canEditMessages,
        canDeleteMessages: canDeleteMessages,
        canManageVideoChats: canManageVideoChats,
        canRestrictMembers: canRestrictMembers,
        canPromoteMembers: canPromoteMembers,
        canChangeInfo: canChangeInfo,
        canInviteUsers: canInviteUsers,
        canPinMessages: canPinMessages,
        canManageTopics: canManageTopics);
    return RequestPromoteChatMember(requestParameters);
  }

  @override
  ResponsePromoteChatMember respondFromJson(Map<String, dynamic> json) =>
      ResponsePromoteChatMember.fromJson(json)..withRequest(this);
}
