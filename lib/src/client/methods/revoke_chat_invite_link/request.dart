import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestRevokeChatInviteLink extends Request {
  RequestRevokeChatInviteLink(RequestParametersRevokeChatInviteLink parameters)
      : super(RequestMethod.revokeChatInviteLink, parameters);

  @override
  ResponseRevokeChatInviteLink respondFromJson(Map<String, dynamic> json) =>
      ResponseRevokeChatInviteLink.fromJson(json)..withRequest(this);
}
