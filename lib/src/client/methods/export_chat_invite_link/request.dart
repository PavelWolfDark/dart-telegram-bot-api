import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestExportChatInviteLink extends Request {
  RequestExportChatInviteLink(RequestParametersExportChatInviteLink parameters)
      : super(RequestMethod.exportChatInviteLink, parameters);

  @override
  ResponseExportChatInviteLink respondFromJson(Map<String, dynamic> json) =>
      ResponseExportChatInviteLink.fromJson(json)..withRequest(this);
}
