import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestEditChatInviteLink extends Request {
  RequestEditChatInviteLink(RequestParametersEditChatInviteLink parameters)
      : super(RequestMethod.editChatInviteLink, parameters);

  @override
  ResponseEditChatInviteLink respondFromJson(Map<String, dynamic> json) =>
      ResponseEditChatInviteLink.fromJson(json)..withRequest(this);
}
