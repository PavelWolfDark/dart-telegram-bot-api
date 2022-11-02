import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestCreateChatInviteLink extends Request {
  RequestCreateChatInviteLink(RequestParametersCreateChatInviteLink parameters)
      : super(RequestMethod.createChatInviteLink, parameters);

  @override
  ResponseCreateChatInviteLink respondFromJson(Map<String, dynamic> json) =>
      ResponseCreateChatInviteLink.fromJson(json)..withRequest(this);
}
