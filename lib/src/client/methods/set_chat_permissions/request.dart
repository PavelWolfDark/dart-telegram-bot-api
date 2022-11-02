import '../../../constants/request_method.dart';
import '../../request.dart';
import 'request_parameters.dart';
import 'response.dart';

class RequestSetChatPermissions extends Request {
  RequestSetChatPermissions(RequestParametersSetChatPermissions parameters)
      : super(RequestMethod.setChatPermissions, parameters);

  @override
  ResponseSetChatPermissions respondFromJson(Map<String, dynamic> json) =>
      ResponseSetChatPermissions.fromJson(json)..withRequest(this);
}
