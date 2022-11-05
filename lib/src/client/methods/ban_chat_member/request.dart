import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestBanChatMember extends Request {
  RequestBanChatMember(RequestParametersBanChatMember parameters)
      : super(RequestMethod.banChatMember, parameters);

  factory RequestBanChatMember.create(
      {
      // int | String
      required Object chatId,
      required int userId,
      int? untilDate,
      bool? revokeMessages}) {
    final requestParameters = RequestParametersBanChatMember(
        chatId: chatId,
        userId: userId,
        untilDate: untilDate,
        revokeMessages: revokeMessages);
    return RequestBanChatMember(requestParameters);
  }

  @override
  ResponseBanChatMember respondFromJson(Map<String, dynamic> json) =>
      ResponseBanChatMember.fromJson(json)..withRequest(this);
}
