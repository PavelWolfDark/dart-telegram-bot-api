import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestCreateChatInviteLink extends Request {
  RequestCreateChatInviteLink(RequestParametersCreateChatInviteLink parameters)
      : super(RequestMethod.createChatInviteLink, parameters);

  factory RequestCreateChatInviteLink.create(
      {
      // int | String
      required Object chatId,
      String? name,
      int? expireDate,
      int? memberLimit,
      bool? createsJoinRequest}) {
    final requestParameters = RequestParametersCreateChatInviteLink(
        chatId: chatId,
        name: name,
        expireDate: expireDate,
        memberLimit: memberLimit,
        createsJoinRequest: createsJoinRequest);
    return RequestCreateChatInviteLink(requestParameters);
  }

  @override
  ResponseCreateChatInviteLink respondFromJson(Map<String, dynamic> json) =>
      ResponseCreateChatInviteLink.fromJson(json)..withRequest(this);
}
