import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestApproveChatJoinRequest extends Request {
  RequestApproveChatJoinRequest(
      RequestParametersApproveChatJoinRequest parameters)
      : super(RequestMethod.approveChatJoinRequest, parameters);

  factory RequestApproveChatJoinRequest.create(
      {
      // int | String
      required Object chatId,
      required int userId}) {
    final requestParameters =
        RequestParametersApproveChatJoinRequest(chatId: chatId, userId: userId);
    return RequestApproveChatJoinRequest(requestParameters);
  }

  @override
  ResponseApproveChatJoinRequest respondFromJson(Map<String, dynamic> json) =>
      ResponseApproveChatJoinRequest.fromJson(json)..withRequest(this);
}
