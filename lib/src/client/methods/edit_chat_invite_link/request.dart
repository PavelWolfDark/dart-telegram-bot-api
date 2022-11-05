import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestEditChatInviteLink extends Request {
  RequestEditChatInviteLink(RequestParametersEditChatInviteLink parameters)
      : super(RequestMethod.editChatInviteLink, parameters);

  factory RequestEditChatInviteLink.create(
      {
      // int | String
      required Object chatId,
      required String inviteLink,
      String? name,
      int? expireDate,
      int? memberLimit,
      bool? createsJoinRequest}) {
    final requestParameters = RequestParametersEditChatInviteLink(
        chatId: chatId,
        inviteLink: inviteLink,
        name: name,
        expireDate: expireDate,
        memberLimit: memberLimit,
        createsJoinRequest: createsJoinRequest);
    return RequestEditChatInviteLink(requestParameters);
  }

  @override
  ResponseEditChatInviteLink respondFromJson(Map<String, dynamic> json) =>
      ResponseEditChatInviteLink.fromJson(json)..withRequest(this);
}
